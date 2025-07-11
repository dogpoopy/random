.class public Lcom/netease/environment/OooO0oo/OooOO0;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/environment/OooO0oo/OooOO0$OooO00o;
    }
.end annotation


# instance fields
.field private OooO00o:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/netease/environment/OooO0oo/OooOO0;->OooO00o:[B

    .line 5
    invoke-virtual {p0, p1}, Lcom/netease/environment/OooO0oo/OooOO0;->OooO00o(Ljava/lang/String;)V

    return-void
.end method

.method private OooO00o(II[I)V
    .locals 2

    .line 13
    aget v0, p3, p1

    .line 14
    aget v1, p3, p2

    aput v1, p3, p1

    .line 15
    aput v0, p3, p2

    return-void
.end method

.method public static OooO00o([BLjava/lang/String;)[B
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/environment/OooO0oo/OooOO0;

    invoke-direct {v0, p1}, Lcom/netease/environment/OooO0oo/OooOO0;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/netease/environment/OooO0oo/OooOO0;->OooO00o([B)[B

    move-result-object p0

    return-object p0
.end method

.method private OooO0O0([B)[I
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 5
    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 9
    aget v4, v1, v2

    add-int/2addr v3, v4

    array-length v4, p1

    rem-int v4, v2, v4

    aget-byte v4, p1, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    rem-int/2addr v3, v0

    .line 10
    invoke-direct {p0, v2, v3, v1}, Lcom/netease/environment/OooO0oo/OooOO0;->OooO00o(II[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)V
    .locals 2

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/netease/environment/OooO0oo/OooOO0;->OooO00o:[B

    return-void

    .line 21
    :cond_0
    new-instance p1, Lcom/netease/environment/OooO0oo/OooOO0$OooO00o;

    const-string v0, "Key length has to be between 5 and 255"

    invoke-direct {p1, v0}, Lcom/netease/environment/OooO0oo/OooOO0$OooO00o;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO00o([B)[B
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/netease/environment/OooO0oo/OooOO0;->OooO00o:[B

    invoke-direct {p0, v0}, Lcom/netease/environment/OooO0oo/OooOO0;->OooO0O0([B)[I

    move-result-object v0

    .line 4
    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 8
    rem-int/lit16 v4, v4, 0x100

    .line 9
    aget v5, v0, v4

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0x100

    .line 10
    invoke-direct {p0, v4, v3, v0}, Lcom/netease/environment/OooO0oo/OooOO0;->OooO00o(II[I)V

    .line 11
    aget v5, v0, v4

    aget v6, v0, v3

    add-int/2addr v5, v6

    rem-int/lit16 v5, v5, 0x100

    aget v5, v0, v5

    .line 12
    aget-byte v6, p1, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
