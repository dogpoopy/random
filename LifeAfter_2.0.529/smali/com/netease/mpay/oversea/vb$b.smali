.class public Lcom/netease/mpay/oversea/vb$b;
.super Lcom/netease/mpay/oversea/vb;
.source "UrlForWebViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/vb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private g:Lcom/netease/mpay/oversea/y5;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/y5;)V
    .locals 7

    if-eqz p4, :cond_0

    .line 1
    iget-object v0, p4, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const-string v6, "/user_center/migrate_code/generate"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/vb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Lcom/netease/mpay/oversea/vb$b;->g:Lcom/netease/mpay/oversea/y5;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/y5;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/vb$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/vb$b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/y5;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/vb;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/vb;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    iget-object v2, p0, Lcom/netease/mpay/oversea/vb;->d:Ljava/lang/String;

    const-string v3, "device_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/vb;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    iget-object v2, p0, Lcom/netease/mpay/oversea/vb;->e:Ljava/lang/String;

    const-string v3, "user_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/vb$b;->g:Lcom/netease/mpay/oversea/y5;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/y5;->h()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 9
    :goto_1
    new-instance v2, Lcom/netease/mpay/oversea/a0;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 10
    invoke-static {p1, v3}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    const-string p1, "1"

    goto :goto_2

    :cond_4
    const-string p1, "0"

    :goto_2
    const-string v1, "writable"

    invoke-direct {v2, v1, p1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
