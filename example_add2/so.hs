main = do
  ls <- getContents
  print . sum . map read . lines $ ls
