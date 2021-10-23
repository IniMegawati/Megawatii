%Berwarna/gambar
mega = imread('mega.jpeg');
figure(), imshow(mega)

%keabuan
wati = (mega(:,:,1) + mega (:,:,2) + mega (:,:,3)) / 3;
figure(), imshow(wati)

%KEABUAN KONS
coker_const = mega(:,:,1) * 0.6 + mega(:,:,2) * 0,22 + mega (:,:,3) * 0.27;
figure(), imshow(coker_const);

%citra biner
nilai_biner = 14;
[kolom, baris] = size(coker_const);;
reski_biner = zeros(kolom,baris);

for x = 1 : kolom
   for y = 1 : baris
      if(coker_const(x,y) > nilai_biner)
          reski_biner(x,y) = 1;
      else
          reski_biner(x,y) = 0;
      end
   end
end
figure(), imshow(reski_biner)

%Brightnes
brighness = coker_const + 20;
figure(), imshow(brighness)

contrast = coker_const * 1.3;
figure(), imshow (contrast)