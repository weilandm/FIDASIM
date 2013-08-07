pro einstein_table
  nmax=6
  ;;-------------------EINSTEIN-----------------------------------------
  ;; Einstein coefficients arranged in form ein[m,n]
  ;; n: initial state (upper one)
  ;; m: final state (lower one) 
  eins=fltarr(16,15)
  ;;to n:    from n=2       3       4       5       6       7       8       9     10        11       12     13      14      15
  eins[1,*] =[0.,4.699e8,5.575e7,1.278e7,4.125e6,1.644e6,7.568e5,3.869e5,2.143e5,1.263e5,7.834e4,5.066e4,3.393e4,2.341e4,1.657e4]
  eins[2,*] =[0.,0.     ,4.410e7,8.419e6,2.530e6,9.732e5,4.389e5,2.215e5,1.216e5,7.122e4,4.397e4,2.834e4,1.893e4,1.303e4,9.210e3]
  eins[3,*] =[0.,0.     ,0.     ,8.986e6,2.201e6,7.783e5,3.358e5,1.651e5,8.905e4,5.156e4,3.156e4,2.021e4,1.343e4,9.211e3,6.490e3]
  eins[4,*] =[0.,0.     ,0.     ,0.     ,2.699e6,7.711e5,3.041e5,1.424e5,7.459e4,4.235e4,2.556e4,1.620e4,1.069e4,7.288e3,5.110e3]
  eins[5,*] =[0,0.      ,0.     ,0.     ,0.     ,1.025e6,3.253e5,1.388e5,6.908e4,3.800e4,2.246e4,1.402e4,9.148e3,6.185e3,4.308e3]
  eins[6,*] =[0.,0.     ,0.     ,0.     ,0.     ,0.     ,4.561e5,1.561e5,7.065e4,3.688e4,2.110e4,1.288e4,8.271e3,5.526e3,3.815e3]
  eins[7,*] =[0.,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,2.272e5,8.237e4,3.905e4,2.117e4,1.250e4,7.845e3,5.156e3,3.516e3]
  eins[8,*] =[0.,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,1.233e5,4.676e4,2.301e4,1.287e4,7.804e3,5.010e3,3.359e3]
  eins[9,*] =[0.,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,7.141e4,2.812e4,1.427e4,8.192e3,5.080e3,3.325e3]
  eins[10,*]=[0.,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,4.377e4,1.774e4,9.231e3,5.417e3,3.324e3]
  eins[11,*]=[0.,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,2.799e4,1.163e4,6.186e3,3.699e3]
  eins[12,*]=[0.,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,1.857e4,7.884e3,4.271e3]
  eins[13,*]=[0.,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,1.271e4,5.496e3]
  eins[14,*]=[0.,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,8.933e3]
  eins[15,*]=[0.,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ,0.     ]



  eins=eins[1:15,*]
  ;; e.g.P: ein[1,2]=3->2 (Balmer-alpha) 4.410e7 [1/s]
  einstein=eins[0:nmax-1,0:nmax-1]
  file ='einstein.dat'
  openw, lun, file, /get_lun
  printf,lun,'#',systime()
  printf,lun,'# einstein coefficents for emission'
  printf,lun, nmax
  for n=0,nmax-1 do begin ;; initial level
     for m=0,nmax-1 do begin ;; final level
        printf, lun,einstein[m,n],f ='(1e11.5)'   
     endfor
  endfor
  close,lun
  free_lun, lun
  print, 'einstein data written to: '+ file
end







