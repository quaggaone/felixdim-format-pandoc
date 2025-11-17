// define pandoc specific variable
#let horizontalrule = line(length: 100%)
// this is pandoc’s translation of <hr> since typst doesn‘t have an equivalent as of now

// import specified template from local Typst package
#import "@local/felixdim-format:0.0.2": conf

#show: doc => conf(
$if(title)$
  title: [$title$],
$endif$
$if(author)$
  author: "$author$",
$endif$
$if(description)$
  description: [$description$],
$endif$
$if(date.year)$
$if(date.month)$
$if(date.day)$
  date: datetime(year: $date.year$, month: $date.month$, day: $date.day$),
$endif$
$endif$
$endif$
$if(lang)$
  lang: "$lang$",
$endif$
$if(region)$
  region: "$region$",
$endif$
  doc,
)

$body$
