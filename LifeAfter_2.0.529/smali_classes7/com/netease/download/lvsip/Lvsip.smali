.class public Lcom/netease/download/lvsip/Lvsip;
.super Ljava/lang/Object;
.source "Lvsip.java"


# static fields
.field private static lvsip:Lcom/netease/download/lvsip/Lvsip;

.field private static sLvsip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private index:I

.field private mLvsips:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/download/lvsip/Lvsip;->sLvsip:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/netease/download/lvsip/Lvsip;->mLvsips:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/netease/download/lvsip/Lvsip;->index:I

    return-void
.end method

.method public static getInstance()Lcom/netease/download/lvsip/Lvsip;
    .locals 1

    .line 31
    sget-object v0, Lcom/netease/download/lvsip/Lvsip;->lvsip:Lcom/netease/download/lvsip/Lvsip;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/netease/download/lvsip/Lvsip;

    invoke-direct {v0}, Lcom/netease/download/lvsip/Lvsip;-><init>()V

    sput-object v0, Lcom/netease/download/lvsip/Lvsip;->lvsip:Lcom/netease/download/lvsip/Lvsip;

    .line 34
    :cond_0
    sget-object v0, Lcom/netease/download/lvsip/Lvsip;->lvsip:Lcom/netease/download/lvsip/Lvsip;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/netease/download/lvsip/Lvsip;->index:I

    .line 84
    iget-object v0, p0, Lcom/netease/download/lvsip/Lvsip;->mLvsips:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/netease/download/lvsip/Lvsip;->mLvsips:[Ljava/lang/String;

    .line 88
    :cond_0
    sget-object v0, Lcom/netease/download/lvsip/Lvsip;->sLvsip:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 89
    sget-object v0, Lcom/netease/download/lvsip/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public createLvsip()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/netease/download/lvsip/Lvsip;->mLvsips:[Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    .line 59
    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    sget-object v4, Lcom/netease/download/lvsip/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getNewIpFromArray()Ljava/lang/String;
    .locals 2

    .line 74
    iget v0, p0, Lcom/netease/download/lvsip/Lvsip;->index:I

    sget-object v1, Lcom/netease/download/lvsip/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 75
    sget-object v0, Lcom/netease/download/lvsip/Lvsip;->sLvsip:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netease/download/lvsip/Lvsip;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    iget v1, p0, Lcom/netease/download/lvsip/Lvsip;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/download/lvsip/Lvsip;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 66
    iget v0, p0, Lcom/netease/download/lvsip/Lvsip;->index:I

    sget-object v1, Lcom/netease/download/lvsip/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init([Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netease/download/lvsip/Lvsip;->mLvsips:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    iput-object p1, p0, Lcom/netease/download/lvsip/Lvsip;->mLvsips:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public isCteateIp()Z
    .locals 1

    .line 48
    sget-object v0, Lcom/netease/download/lvsip/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
