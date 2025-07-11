.class public Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO00o;
.super Ljava/lang/Object;
.source "BitTreeDecoder.java"


# instance fields
.field OooO00o:[S

.field OooO0O0:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO00o;->OooO0O0:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 3
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO00o;->OooO00o:[S

    return-void
.end method

.method public static OooO00o([SILcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v4, p1, v3

    .line 5
    invoke-virtual {p2, p0, v4}, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o([SI)I

    move-result v4

    shl-int/2addr v3, v1

    add-int/2addr v3, v4

    shl-int/2addr v4, v0

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public OooO00o(Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;)I
    .locals 5

    .line 2
    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO00o;->OooO0O0:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_0

    shl-int/lit8 v3, v2, 0x1

    .line 3
    iget-object v4, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO00o;->OooO00o:[S

    invoke-virtual {p1, v4, v2}, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o([SI)I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO00o;->OooO0O0:I

    shl-int p1, v1, p1

    sub-int/2addr v2, p1

    return v2
.end method

.method public OooO00o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO00o;->OooO00o:[S

    invoke-static {v0}, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o([S)V

    return-void
.end method

.method public OooO0O0(Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    :goto_0
    iget v4, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO00o;->OooO0O0:I

    if-ge v0, v4, :cond_0

    .line 3
    iget-object v4, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO00o;->OooO00o:[S

    invoke-virtual {p1, v4, v3}, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o([SI)I

    move-result v4

    shl-int/2addr v3, v1

    add-int/2addr v3, v4

    shl-int/2addr v4, v0

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
