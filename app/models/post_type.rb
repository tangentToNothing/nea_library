class PostType < EnumerateIt::Base
  associate_values(
      :training  => 1,
      :planning  => 2,
      :administration  => 3,
      :procurement => 4,
      :testing => 5,
      :evaluation => 6,
      :construction => 7,
      :technical_assistance => 9
  )
end
