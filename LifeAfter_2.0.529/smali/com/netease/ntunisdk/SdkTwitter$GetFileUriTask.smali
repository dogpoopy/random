.class Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;
.super Landroid/os/AsyncTask;
.source "SdkTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetFileUriTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private imageFile:Ljava/io/File;

.field private link:Ljava/lang/String;

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/SdkTwitter;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/SdkTwitter;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 678
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->text:Ljava/lang/String;

    .line 679
    iput-object p3, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->link:Ljava/lang/String;

    .line 680
    iput-object p2, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->imageFile:Ljava/io/File;

    .line 681
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 11

    const-string p1, "_id"

    const-string v0, ""

    .line 686
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/SdkTwitter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 689
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 691
    :try_start_0
    invoke-static {v1}, Lcom/netease/ntunisdk/SdkTwitter;->access$900(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const-string v9, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v8

    const/4 v10, 0x0

    move-object v8, v9

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 697
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 698
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v1, "content://media/external/images/media"

    .line 700
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 703
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->imageFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 704
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_data"

    .line 705
    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {v1}, Lcom/netease/ntunisdk/SdkTwitter;->access$1000(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v2, p1

    :cond_1
    if-eqz v4, :cond_2

    .line 711
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkTwitter"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 671
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/SdkTwitter;

    if-eqz v0, :cond_0

    .line 724
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->link:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/netease/ntunisdk/SdkTwitter;->access$600(Lcom/netease/ntunisdk/SdkTwitter;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 671
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
