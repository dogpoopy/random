.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    .line 611
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 628
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$imageFile:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->access$400(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 629
    :catch_0
    move-exception v0

    .line 632
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 611
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 681
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 682
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 683
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 611
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 637
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 641
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-boolean v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mPrintActivityRespectsOrientation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    if-nez v1, :cond_1

    .line 645
    :cond_0
    monitor-enter p0

    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    invoke-static {v1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->access$500(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;)Landroid/print/PrintAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 647
    .local v1, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    if-eqz v1, :cond_1

    .line 650
    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v2

    invoke-static {p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->access$600(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 651
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 653
    .local v2, "rotation":Landroid/graphics/Matrix;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 654
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 655
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    .line 654
    move-object v3, p1

    move-object v8, v2

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 647
    .end local v2    # "rotation":Landroid/graphics/Matrix;
    :catchall_0
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_0

    .end local v1    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :catchall_1
    move-exception v1

    .local v0, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    goto :goto_0

    .line 661
    .end local v0    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iput-object p1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    .line 662
    if-eqz p1, :cond_2

    .line 663
    new-instance v2, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$jobName:Ljava/lang/String;

    invoke-direct {v2, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 664
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    .line 665
    invoke-virtual {v2, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    .line 666
    invoke-virtual {v2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v2

    .line 668
    .local v2, "info":Landroid/print/PrintDocumentInfo;
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iget-object v4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v1, v3

    .line 670
    .local v1, "changed":Z
    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v3, v2, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 672
    .end local v1    # "changed":Z
    .end local v2    # "info":Landroid/print/PrintDocumentInfo;
    goto :goto_2

    .line 673
    :cond_2
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    .line 675
    :goto_2
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iput-object v0, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 676
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 611
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 615
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;

    invoke-direct {v1, p0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 623
    return-void
.end method
