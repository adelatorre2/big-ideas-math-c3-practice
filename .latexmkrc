# Send standalone subfile PDFs to print/ while keeping the full packet output in root.
if ($root_filename ne 'master_review.tex') {
  $out_dir = 'print';
}
