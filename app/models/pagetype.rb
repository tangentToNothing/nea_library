class PageType < EnumerateIt::Base
  associate_values(
      :faq  => 1,
      :basic  => 2,
      :admin  => 3,
  )
end
