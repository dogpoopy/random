.class public Lcom/netease/mpay/oversea/ui/y;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/web/WebViewExListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/y$d;,
        Lcom/netease/mpay/oversea/ui/y$e;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field protected b:Lcom/netease/mpay/oversea/web/WebViewEx;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/TextView;

.field protected e:Lcom/netease/mpay/oversea/y5;

.field protected f:Lcom/netease/mpay/oversea/ui/y$e;

.field private g:Landroid/app/Activity;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field public n:Z

.field private o:Ljava/lang/String;

.field private p:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/netease/mpay/oversea/ui/y;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/ui/y;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 358
    iput v0, p0, Lcom/netease/mpay/oversea/ui/y;->p:I

    .line 359
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    .line 360
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ui/y;->j:Z

    .line 361
    iput-boolean p3, p0, Lcom/netease/mpay/oversea/ui/y;->n:Z

    return-void
.end method

.method private a(Landroid/webkit/WebView;)Lcom/netease/mpay/oversea/ui/y$d;
    .locals 8

    .line 69
    new-instance v0, Lcom/netease/mpay/oversea/ui/y$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/ui/y$d;-><init>(Lcom/netease/mpay/oversea/ui/y$a;)V

    .line 70
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    .line 71
    invoke-static {v2}, Lcom/netease/mpay/oversea/bc;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 72
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 73
    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "Camera"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    .line 79
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 80
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 82
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 85
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/q;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/mpay/oversea/bc;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenshot:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 88
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 89
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x46

    invoke-virtual {v3, v2, v5, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 90
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    invoke-virtual {v2, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x1

    .line 96
    iput-boolean v2, v0, Lcom/netease/mpay/oversea/ui/y$d;->a:Z

    .line 97
    iput-object p1, v0, Lcom/netease/mpay/oversea/ui/y$d;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 106
    :try_start_1
    iput-boolean p1, v0, Lcom/netease/mpay/oversea/ui/y$d;->a:Z

    .line 107
    iput-object v1, v0, Lcom/netease/mpay/oversea/ui/y$d;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object v0

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    :cond_3
    throw p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "/"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "_"

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, " "

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/y;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/ui/y;->j:Z

    return p0
.end method

.method private c()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/web/WebViewEx;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/y;->e()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz v0, :cond_0

    .line 3
    new-instance v7, Lcom/netease/mpay/oversea/j;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__user_center_login_error:I

    .line 4
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/oversea/d;->b:Lcom/netease/mpay/oversea/d;

    const/16 v2, 0x2711

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/d;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v1, 0x2711

    .line 5
    invoke-interface {v0, v1, v7}, Lcom/netease/mpay/oversea/ui/y$e;->a(ILcom/netease/mpay/oversea/j;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/web/WebViewEx;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->e:Lcom/netease/mpay/oversea/y5;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->a:Landroid/widget/ProgressBar;

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__web_title_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->m:Landroid/view/View;

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 15
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->d:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->k:Landroid/widget/ImageView;

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 20
    new-instance v2, Lcom/netease/mpay/oversea/ui/y$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/y$a;-><init>(Lcom/netease/mpay/oversea/ui/y;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->k:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/y;->j:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_refresh:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 34
    new-instance v2, Lcom/netease/mpay/oversea/ui/y$b;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/y$b;-><init>(Lcom/netease/mpay/oversea/ui/y;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_close:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 45
    new-instance v2, Lcom/netease/mpay/oversea/ui/y$c;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/y$c;-><init>(Lcom/netease/mpay/oversea/ui/y;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__webview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/web/WebViewEx;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    .line 53
    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/web/WebViewEx;->setFocusable(Z)V

    .line 54
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/web/WebViewEx;->setFocusableInTouchMode(Z)V

    .line 55
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/netease/mpay/oversea/R$bool;->netease_mpay_oversea__orientation_landscape:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 57
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g8;->c()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/oversea/web/Config;

    .line 59
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g9;->f()Z

    move-result p2

    iget-boolean v6, p0, Lcom/netease/mpay/oversea/ui/y;->n:Z

    const-string v7, "a3.9.0"

    invoke-direct {v5, p1, v7, p2, v6}, Lcom/netease/mpay/oversea/web/Config;-><init>(ZLjava/lang/String;ZZ)V

    .line 60
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->n()Ljava/util/ArrayList;

    move-result-object v6

    move-object v7, p0

    .line 61
    invoke-virtual/range {v2 .. v7}, Lcom/netease/mpay/oversea/web/WebViewEx;->registered(Landroid/app/Activity;Landroid/content/res/AssetManager;Lcom/netease/mpay/oversea/web/Config;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/web/WebViewExListener;)V

    .line 65
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/web/WebViewEx;->requestFocus()Z

    .line 66
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/web/WebViewEx;->setScrollBarStyle(I)V

    .line 67
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    return-object p1
.end method

.method public a(Lcom/netease/mpay/oversea/ui/y$e;)Lcom/netease/mpay/oversea/ui/y;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    return-object p0
.end method

.method protected a()V
    .locals 2

    .line 120
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 121
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 122
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 123
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 126
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 127
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 128
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final alert(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 2
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/y$e;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->h:Ljava/lang/String;

    return-void
.end method

.method public closeWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/y$e;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    return-object v0
.end method

.method public g()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->b(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mFirstPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/y;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y;->i:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getSDKToken()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->e:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->e:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:NMOJSBridge.Common.setSdkToken(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSDKToken:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/web/WebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/y;->d()V

    :goto_1
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->reload()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/y;->a()V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/web/WebViewEx;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:\ncode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nextraStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__user_center_login_error:I

    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->j()V

    .line 9
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/j;

    invoke-static {p1}, Lcom/netease/mpay/oversea/w5;->a(I)I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/y;->c:Landroid/view/View;

    if-eqz p2, :cond_2

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz p2, :cond_3

    .line 14
    invoke-interface {p2, p1, v0}, Lcom/netease/mpay/oversea/ui/y$e;->a(ILcom/netease/mpay/oversea/j;)V

    :cond_3
    return-void
.end method

.method public onPNLogin(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/y$e;->onPNLogin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/y;->h()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/ui/y;->j:Z

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/y;->i:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->l:Landroid/widget/ImageView;

    const/16 p2, 0x8

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/y;->j:Z

    if-nez v0, :cond_4

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/ui/y;->p:I

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/y;->c()V

    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/netease/mpay/oversea/ui/y;->p:I

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x50

    const/16 v2, 0x8

    if-lt p1, v1, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :cond_2
    :goto_0
    iput p1, p0, Lcom/netease/mpay/oversea/ui/y;->p:I

    :cond_3
    :goto_1
    return-void
.end method

.method public final onReady()V
    .locals 1

    const-string v0, "onReady"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "net::ERR_QUIC_PROTOCOL_ERROR"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "net::ERR_CLEARTEXT_NOT_PERMITTED"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz p1, :cond_1

    .line 3
    new-instance p4, Lcom/netease/mpay/oversea/j;

    const/16 v0, 0x2713

    invoke-direct {p4, v0, p3}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2, p4}, Lcom/netease/mpay/oversea/ui/y$e;->a(ILcom/netease/mpay/oversea/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedTitle:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x20

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/y;->o:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->d:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/netease/mpay/oversea/ec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->m:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSetSpwd(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/y$e;->onSetSpwd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUserLogin(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserLogin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/netease/mpay/oversea/c6;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/e6;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/y;->e()V

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz p1, :cond_1

    .line 6
    new-instance v6, Lcom/netease/mpay/oversea/j;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__user_center_login_error:I

    .line 7
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/mpay/oversea/d;->c:Lcom/netease/mpay/oversea/d;

    const/16 v1, 0x2711

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/d;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v0, 0x2711

    .line 8
    invoke-interface {p1, v0, v6}, Lcom/netease/mpay/oversea/ui/y$e;->a(ILcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v1, p1, v0}, Lcom/netease/mpay/oversea/ui/y$e;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/y$e;->onVerify(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openLinkInNativeBrowser(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->f:Lcom/netease/mpay/oversea/ui/y$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/y$e;->postMsgToNative(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveMigrateCode(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/mpay/oversea/bc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/mpay/oversea/bc;->c(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "\");"

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y;->e:Lcom/netease/mpay/oversea/y5;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/y5;->h()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/i6;->b()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    sget v6, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_inherit_suffix:I

    invoke-static {v5, v6, v0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveMigrateCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 10
    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/y;->e:Lcom/netease/mpay/oversea/y5;

    if-eqz v5, :cond_0

    .line 11
    iget-object v5, v5, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v5, ""

    .line 13
    :goto_0
    new-instance v6, Lcom/netease/mpay/oversea/k0;

    new-instance v7, Lcom/netease/mpay/oversea/g4;

    invoke-direct {v7, p1, v5, v0}, Lcom/netease/mpay/oversea/g4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v1, v2, v7}, Lcom/netease/mpay/oversea/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/j0;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Lcom/netease/mpay/oversea/s;->b([Ljava/lang/Object;)Lcom/netease/mpay/oversea/s;

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    if-eqz p1, :cond_1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:NMOJSBridgeCommon.prototype.setSavedStatus(true, \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/y;->d()V

    goto :goto_1

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:NMOJSBridgeCommon.prototype.setSavedStatus(false, \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public saveToClipboard(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/w0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:NMOJSBridgeCommon.prototype.setCopyStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/web/WebViewEx;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public screenShot()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/y;->a(Landroid/webkit/WebView;)Lcom/netease/mpay/oversea/ui/y$d;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenshot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/netease/mpay/oversea/ui/y$d;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/y$d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y;->b:Lcom/netease/mpay/oversea/web/WebViewEx;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:NMOJSBridgeCommon.prototype.setSavedStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/netease/mpay/oversea/ui/y$d;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/y$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/y;->d()V

    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->H()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jump to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 7
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method public final toast(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y;->g:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method
