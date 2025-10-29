// import specified template
$if(template)$
#import "lib/felixdim-format-typst/lib/$template$.typ": conf
$else$
#import "lib/felixdim-format-typst/lib/fd-doc.typ": conf
$endif$

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
