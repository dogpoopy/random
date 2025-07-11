.class public Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "OutWindow.java"


# instance fields
.field OooO00o:[B

.field OooO0O0:I

.field OooO0OO:I

.field OooO0Oo:I

.field OooO0o0:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 4

    .line 10
    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 14
    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    .line 16
    :cond_1
    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    iput v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    return-void
.end method

.method public OooO00o(B)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:[B

    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    aput-byte p1, v0, v1

    .line 28
    iget p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    if-lt v2, p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o()V

    :cond_0
    return-void
.end method

.method public OooO00o(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    if-eq v0, p1, :cond_1

    .line 2
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:[B

    .line 3
    :cond_1
    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    .line 5
    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    return-void
.end method

.method public OooO00o(II)V
    .locals 5

    .line 17
    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 19
    iget p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    add-int/2addr v0, p1

    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 22
    iget p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    if-lt v0, p1, :cond_1

    const/4 v0, 0x0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:[B

    iget v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    aput-byte v0, v1, v2

    if-lt v3, p1, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o()V

    :cond_2
    add-int/lit8 p2, p2, -0x1

    move v0, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public OooO00o(Ljava/io/OutputStream;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0()V

    .line 7
    iput-object p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:Ljava/io/OutputStream;

    return-void
.end method

.method public OooO00o(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    .line 9
    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    :cond_0
    return-void
.end method

.method public OooO0O0(I)B
    .locals 1

    .line 3
    iget v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 5
    iget p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    add-int/2addr v0, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public OooO0O0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:Ljava/io/OutputStream;

    return-void
.end method
