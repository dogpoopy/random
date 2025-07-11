.class Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OooO00o"
.end annotation


# instance fields
.field OooO00o:[S


# direct methods
.method constructor <init>(Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x300

    new-array p1, p1, [S

    .line 2
    iput-object p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;->OooO00o:[S

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;)B
    .locals 3

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 2
    iget-object v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;->OooO00o:[S

    invoke-virtual {p1, v2, v0}, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o([SI)I

    move-result v0

    or-int/2addr v0, v1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    int-to-byte p1, v0

    return p1
.end method

.method public OooO00o(Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;B)B
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    shr-int/lit8 v2, p2, 0x7

    and-int/2addr v2, v0

    shl-int/2addr p2, v0

    int-to-byte p2, p2

    .line 3
    iget-object v3, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;->OooO00o:[S

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o([SI)I

    move-result v3

    shl-int/2addr v1, v0

    or-int/2addr v1, v3

    const/16 v4, 0x100

    if-eq v2, v3, :cond_1

    :goto_0
    if-ge v1, v4, :cond_2

    shl-int/lit8 p2, v1, 0x1

    .line 7
    iget-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;->OooO00o:[S

    invoke-virtual {p1, v0, v1}, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o([SI)I

    move-result v0

    or-int v1, p2, v0

    goto :goto_0

    :cond_1
    if-lt v1, v4, :cond_0

    :cond_2
    int-to-byte p1, v1

    return p1
.end method

.method public OooO00o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0O0/OooO0O0$OooO0O0$OooO00o;->OooO00o:[S

    invoke-static {v0}, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o([S)V

    return-void
.end method
