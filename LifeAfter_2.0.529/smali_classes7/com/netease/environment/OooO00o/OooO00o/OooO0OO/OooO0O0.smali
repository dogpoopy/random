.class public Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field OooO00o:I

.field OooO0O0:I

.field OooO0OO:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o([S)V
    .locals 2

    const/4 v0, 0x0

    .line 37
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/16 v1, 0x400

    .line 38
    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o(I)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    .line 7
    iget v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    sub-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1f

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v1

    sub-int/2addr v2, v4

    .line 8
    iput v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    shl-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v3, v3, 0x1

    or-int/2addr v0, v3

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    shl-int/lit8 v1, v2, 0x8

    .line 13
    iget-object v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0OO:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    .line 14
    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public OooO00o([SI)I
    .locals 7

    .line 15
    aget-short v0, p1, p2

    .line 16
    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    ushr-int/lit8 v2, v1, 0xb

    mul-int v2, v2, v0

    .line 17
    iget v3, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    const/high16 v4, -0x80000000

    xor-int v5, v3, v4

    xor-int/2addr v4, v2

    const/high16 v6, -0x1000000

    if-ge v5, v4, :cond_1

    .line 19
    iput v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-short v0, v0

    .line 20
    aput-short v0, p1, p2

    and-int p1, v2, v6

    if-nez p1, :cond_0

    shl-int/lit8 p1, v3, 0x8

    .line 23
    iget-object p2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0OO:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    .line 24
    iget p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    sub-int/2addr v1, v2

    .line 30
    iput v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    sub-int/2addr v3, v2

    .line 31
    iput v3, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    ushr-int/lit8 v2, v0, 0x5

    sub-int/2addr v0, v2

    int-to-short v0, v0

    .line 32
    aput-short v0, p1, p2

    and-int p1, v1, v6

    if-nez p1, :cond_2

    shl-int/lit8 p1, v3, 0x8

    .line 35
    iget-object p2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0OO:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    .line 36
    iget p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final OooO00o()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO00o:I

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 5
    iget v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0OO:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0O0:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final OooO00o(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0OO:Ljava/io/InputStream;

    return-void
.end method

.method public final OooO0O0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/netease/environment/OooO00o/OooO00o/OooO0OO/OooO0O0;->OooO0OO:Ljava/io/InputStream;

    return-void
.end method
