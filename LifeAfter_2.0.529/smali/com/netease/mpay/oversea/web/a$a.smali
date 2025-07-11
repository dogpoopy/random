.class Lcom/netease/mpay/oversea/web/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/web/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:I

.field b:Z

.field final synthetic c:Lcom/netease/mpay/oversea/web/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/web/a;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/mpay/oversea/web/a$a;->c:Lcom/netease/mpay/oversea/web/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x19

    :goto_0
    iput p1, p0, Lcom/netease/mpay/oversea/web/a$a;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/web/a$a;->b:Z

    return-void
.end method


# virtual methods
.method a(I)Z
    .locals 2

    iget v0, p0, Lcom/netease/mpay/oversea/web/a$a;->a:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/netease/mpay/oversea/web/a$a;->b:Z

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/web/a$a;->b:Z

    return p1

    :cond_1
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/web/a$a;->b:Z

    return v1
.end method
