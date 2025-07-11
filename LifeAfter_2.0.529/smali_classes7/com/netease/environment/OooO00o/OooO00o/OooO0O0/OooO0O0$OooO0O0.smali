.class Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;
    }
.end annotation


# instance fields
.field OooO00o:[Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;

.field OooO0O0:I

.field OooO0OO:I

.field OooO0Oo:I


# direct methods
.method constructor <init>(Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method OooO00o(IB)Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO00o:[Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;

    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO0Oo:I

    and-int/2addr p1, v1

    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO0O0:I

    shl-int/2addr p1, v1

    and-int/lit16 p2, p2, 0xff

    rsub-int/lit8 v1, v1, 0x8

    ushr-int/2addr p2, v1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public OooO00o()V
    .locals 3

    .line 10
    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO0O0:I

    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO0OO:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO00o:[Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;->OooO00o()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO00o(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO00o:[Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO0O0:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO0OO:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO0OO:I

    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    .line 4
    iput v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO0Oo:I

    .line 5
    iput p2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO0O0:I

    add-int/2addr p2, p1

    shl-int p1, v0, p2

    .line 7
    new-array p2, p1, [Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;

    iput-object p2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO00o:[Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO00o:[Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;

    new-instance v1, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;

    invoke-direct {v1, p0}, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;-><init>(Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
