shared_examples "Join Dependency on ActiveRecord 4.1" do
  context 'with symbol joins' do
    subject { new_join_dependency Person, :articles => :comments }
    specify { expect(subject.join_root.drop(1).size).to eq(2) }
  end

  context 'with has_many :through association' do
    subject { new_join_dependency Person, :authored_article_comments }

    specify { expect(subject.join_root.drop(1).size).to eq(1) }
    specify { expect(subject.join_root.drop(1).first.table_name).to eq 'comments' }
  end

  context 'with outer join' do
    subject { new_join_dependency Person, new_join(:articles, :outer) }
    specify { expect(subject.join_root.drop(1).size).to eq(1) }
  end

  context 'with nested outer joins' do
    subject { new_join_dependency Person, new_join(:articles, :outer) => new_join(:comments, :outer) }
    specify { expect(subject.join_root.drop(1).size).to eq(2) }
  end

  context 'with polymorphic belongs_to join' do
    subject { new_join_dependency Note, new_join(:notable, :inner, Person) }

    specify { expect(subject.join_root.drop(1).size).to eq(1) }
    specify { expect(subject.join_root.drop(1).first.table_name).to eq 'people' }

    it 'finds a join association respecting polymorphism' do
      parent = subject.join_root
      reflection = Note.reflect_on_association(:notable)
      expect(subject.find_join_association_respecting_polymorphism(
        reflection, parent, Person
      )).to eq subject.join_root.drop(1).first
    end
  end

  context 'with polymorphic belongs_to join and nested symbol join' do
    subject { new_join_dependency Note, new_join(:notable, :inner, Person) => :comments }

    specify { expect(subject.join_root.drop(1).size).to eq(2) }
    specify { expect(subject.join_root.drop(1).first.table_name).to eq 'people' }
    specify { expect(subject.join_root.drop(1)[1].table_name).to eq 'comments' }
  end
end
