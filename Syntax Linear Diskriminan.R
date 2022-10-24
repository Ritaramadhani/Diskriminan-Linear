#Import data
bb<-dapodik
dim(bb)
#02 membuat kelas baru:
#skor quality lebih dari 6 dikelaskan menjadi kelas=1, selainnya dikelaskan menjadi kelas=0
akreditasi <- as.factor(ifelse(bb$`peringkat akreditasi`=="A",1,0))
#03 membagi dataset menjadi dua bagian secara acak
#pemilihan amatan secara acak sbg data training
set.seed (1001)
acak <- sample(1:nrow(bb), 0.8*nrow(bb))
#data training
data.training <- data.frame(akreditasi,bb$jumlah_ruang_kelas, bb$jumlah_guru_honor_sekolah)[acak,]
head(data.training)
colnames(data.training) <- c("akreditasi","jumlah ruang kelas","jumlah guru honor")
head(data.training)
#data testing
data.testing <- data.frame(akreditasi, bb$jumlah_ruang_kelas, bb$jumlah_guru_honor_sekolah)[-acak,]
colnames(data.testing) <- c("akreditasi", "jumlah ruang kelas","jumlah guru honor")
head(data.testing)
# Uji ragam-peragam
bartlett.test(data.training[,-1], data.training[,1], data.training)
#Linear Discriminant
library(MASS)
lda.fit <- lda(akreditasi~., data = data.training)
lda.pred <- predict(lda.fit, data.testing)$class
#Ukuran kebaikan prediksi
cm <- table(data.testing$akreditasi, lda.pred)
accs <- (cm[1] + cm[4])/(sum(cm))
sensi <- (cm[4])/(cm[2]+cm[4])
spesi <- (cm[1])/(cm[1]+cm[3])
print(list(accs, sensi, spesi))
