.class Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;
.super Landroid/os/AsyncTask;
.source "SdkTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveBmpAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private canceled:Z

.field private filePath:Ljava/io/File;

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/SdkTwitter;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkTwitter;)V
    .locals 1

    .line 855
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 852
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->canceled:Z

    .line 856
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    .line 857
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->mRef:Ljava/lang/ref/WeakReference;

    .line 858
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Lcom/netease/ntunisdk/SdkTwitter;->access$1500(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const-string v0, "sdk-twitter-save.png"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->filePath:Ljava/io/File;

    return-void
.end method

.method static synthetic access$1702(Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;Z)Z
    .locals 0

    .line 847
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->canceled:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 847
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .line 882
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 884
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->filePath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 885
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 888
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 889
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 891
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 894
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 847
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/SdkTwitter;

    .line 901
    iget-boolean v1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->canceled:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 902
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    .line 903
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkTwitter;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    .line 905
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/SdkTwitter;

    if-eqz v0, :cond_0

    .line 864
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkTwitter;->access$1600(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 865
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 866
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Reading image\u2026"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 868
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask$1;

    invoke-direct {v2, p0, v0}, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask$1;-><init>(Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;Lcom/netease/ntunisdk/SdkTwitter;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 876
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
