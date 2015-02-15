load('train_human_genki.mat','images','expressions');

X_smiles = reshape(images,[size(images,1)*size(images,2), size(images,3)])';
I_smiles = images;
y_smiles = double(expressions');
