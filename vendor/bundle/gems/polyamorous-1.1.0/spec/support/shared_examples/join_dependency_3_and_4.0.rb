shared_examples "Join Dependency on ActiveRecord 3 and 4.0" do
  context 'with symbol joins' do
    subject { new_join_dependency Person, :articles => :comments }

    specify { expect(subject.join_associations.size).to eq(2) }
    specify { expect(subject.join_associations).to be_all { |a| a.join_type == Polyamorous::InnerJoin } }
  end

  context 'with has_many :through association' do
    subject { new_join_dependency Person, :authored_article_comments }

    specify { expect(subject.join_associations.size).to eq(1) }
    specify { expect(subject.join_associations.first.table_name).to eq 'comments' }
  end

  context 'with outer join' do
    subject { new_join_dependency Person, new_join(:articles, :outer) }

    specify { expect(subject.join_associations.size).to eq(1) }
    specify { expect(subject.join_associations).to be_all { |a| a.join_type == Polyamorous::OuterJoin } }
  end

  context 'with nested outer joins' do
    subject { new_join_dependency Person, new_join(:articles, :outer) => new_join(:comments, :outer) }

    specify { expect(subject.join_associations.size).to eq(2) }
    specify { expect(subject.join_associations).to be_all { |a| a.join_type == Polyamorous::OuterJoin } }
  end

  context 'with polymorphic belongs_to join' do
    subject { new_join_dependency Note, new_join(:notable, :inner, Person) }

    specify { expect(subject.join_associations.size).to eq(1) }
    specify { expect(subject.join_associations).to be_all { |a| a.join_type == Polyamorous::InnerJoin } }
    specify { expect(subject.join_associations.first.table_name).to eq 'people' }

    it 'finds a join association respecting polymorphism' do
      parent = subject.join_base
      reflection = Note.reflect_on_association(:notable)
      expect(subject.find_join_association_respecting_polymorphism(
        reflection, parent, Person
      )).to eq subject.join_associations.first
    end
  end

  context 'with polymorphic belongs_to join and nested symbol join' do
    subject { new_join_dependency Note, new_join(:notable, :inner, Person) => :comments }

    specify { expect(subject.join_associations.size).to eq(2) }
    specify { expect(subject.join_associations).to be_all { |a| a.join_type == Polyamorous::InnerJoin } }
    specify { expect(subject.join_associations.first.table_name).to eq 'people' }
    specify { expect(subject.join_associations[1].table_name).to eq 'comments' }
  end
end
