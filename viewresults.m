load results.mat
% a = 1;
% b = num_signs;
% r = round(a + (b-a)*rand()); % random image to show

% view versions of one image (original, rep, match, match rep)
% disp('Image shown');
% disp(r);
for r = 1:num_signs
    fig = figure(r);
    colormap('gray');
    subplot(221);
    imagesc(reshape(test_r(r,:), [n, n]));
    title('Testing Image (Original)');
    subplot(222);
    imagesc(reshape(vectors*test_c(r,:).', [n, n]));
    title('Testing Image (Representation)');
    subplot(223);
    imagesc(reshape(train_r(close_index(r),:), [n, n]));
    title('Training Image (Original)');
    subplot(224);
    imagesc(reshape(vectors*train_c(close_index(r),:).', [n, n]));
    title('Training Image (Representation)');
    r_name = num2str(r);
    saveas(fig, r_name, 'jpg');
end

% % view eigenfaces
% figure(2);
% colormap('gray');
% subplot(221);
% imagesc(reshape(vectors(:,1), [64, 64]));
% title('Eigensign 1');
% subplot(222);
% imagesc(reshape(vectors(:,2), [64, 64]));
% title('Eigensign 2');
% subplot(223);
% imagesc(reshape(vectors(:,3), [64, 64]));
% title('Eigensign 3');
% subplot(224);
% imagesc(reshape(vectors(:,4), [64, 64]));
% title('Eigensign 4');