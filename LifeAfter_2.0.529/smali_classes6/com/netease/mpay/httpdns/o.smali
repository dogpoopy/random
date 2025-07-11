.class public Lcom/netease/mpay/httpdns/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/mpay/httpdns/o;->a:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const-string p1, "INFO"

    goto :goto_0

    :cond_0
    const-string p1, "DEBUG"

    goto :goto_0

    :cond_1
    const-string p1, "WARN"

    goto :goto_0

    :cond_2
    const-string p1, "ERROR"

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "[%s]:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
