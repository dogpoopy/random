.class public Lcom/netease/mpay/oversea/l5;
.super Ljava/lang/Object;
.source "LogConfig.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/l5;->a:I

    .line 3
    iput p2, p0, Lcom/netease/mpay/oversea/l5;->b:I

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/l5;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/netease/mpay/oversea/l5;
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/l5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "[%p-%l-%c]-#%t:%m"

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/l5;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "INFO"

    return-object p1

    :cond_0
    const-string p1, "DEBUG"

    return-object p1

    :cond_1
    const-string p1, "WARN"

    return-object p1

    :cond_2
    const-string p1, "ERROR"

    return-object p1
.end method


# virtual methods
.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/l5;->a(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "[%s]:%s"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
