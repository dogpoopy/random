.class Lcom/netease/mpay/oversea/q3$a;
.super Ljava/lang/Object;
.source "GameConfigResponse.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q3;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/netease/mpay/oversea/q3$f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/q3;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q3$a;->a:Lcom/netease/mpay/oversea/q3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/q3$f;Lcom/netease/mpay/oversea/q3$f;)I
    .locals 0

    .line 1
    iget p1, p1, Lcom/netease/mpay/oversea/q3$f;->h:I

    iget p2, p2, Lcom/netease/mpay/oversea/q3$f;->h:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/q3$f;

    check-cast p2, Lcom/netease/mpay/oversea/q3$f;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/q3$a;->a(Lcom/netease/mpay/oversea/q3$f;Lcom/netease/mpay/oversea/q3$f;)I

    move-result p1

    return p1
.end method
