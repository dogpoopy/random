.class public Lcom/squareup/picasso/TwitterComposerImageClearer;
.super Ljava/lang/Object;
.source "TwitterComposerImageClearer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/squareup/picasso/PicassoCompat;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p0

    iget-object p0, p0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    invoke-interface {p0, p1}, Lcom/squareup/picasso/Cache;->clearKeyUri(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
