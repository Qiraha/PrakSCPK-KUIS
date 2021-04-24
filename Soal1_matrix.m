matrix_A=[3 7 3 1 8 3; 5 10 8 4 2 5; 9 6 20 13 -3 11; 12 9 5 2 7 6; 4 2 7 7 9 12; 9 1 9 -5 14 4];
disp('Matrix A =');
disp([matrix_A]);
diagA=diag(matrix_A);
disp('Vektor matrix baru berisi elemen diagonal utama =');
disp([diagA]);
New_A=matrix_A(2:4,2:3);
disp('Matrix baru dari baris 2-4 dan kolom 2-3 matrix A =');
disp([New_A]);
