// define pandoc specific variable
#let horizontalrule = line(length: 100%)
// this is pandoc’s translation of <hr> since typst doesn‘t have an equivalent as of now

// import specified template from git subtree
#import "/opt/homebrew/Cellar/panfd/0.1.0/lib/felixdim-format-typst/templates/fd-doc.typ": conf as fd-doc

#show: doc => fd-doc(
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
