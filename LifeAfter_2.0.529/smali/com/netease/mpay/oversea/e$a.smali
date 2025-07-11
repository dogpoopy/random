.class public Lcom/netease/mpay/oversea/e$a;
.super Lcom/netease/mpay/oversea/e3;
.source "AndroidID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final i:Ljava/lang/String;

.field final synthetic j:Lcom/netease/mpay/oversea/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/e;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/e$a;->j:Lcom/netease/mpay/oversea/e;

    .line 2
    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p1, v0}, Lcom/netease/mpay/oversea/e3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "device3247353318869876128"

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->b([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/e$a;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/e$a;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/e$a;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/e$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/e$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/e$a;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/e1;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/e3;->a([B)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/e$a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e3;->b()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/e$a;->i:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netease/mpay/oversea/e1;->b([BLjava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    nop

    :catch_0
    :cond_0
    return-object v1
.end method
