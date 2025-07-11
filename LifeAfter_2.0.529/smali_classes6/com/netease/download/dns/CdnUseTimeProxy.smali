.class public Lcom/netease/download/dns/CdnUseTimeProxy;
.super Ljava/lang/Object;
.source "CdnUseTimeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    }
.end annotation


# static fields
.field private static sCndUseTimeProxy:Lcom/netease/download/dns/CdnUseTimeProxy;


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/download/dns/CdnUseTimeProxy;->sCndUseTimeProxy:Lcom/netease/download/dns/CdnUseTimeProxy;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/netease/download/dns/CdnUseTimeProxy;

    invoke-direct {v0}, Lcom/netease/download/dns/CdnUseTimeProxy;-><init>()V

    sput-object v0, Lcom/netease/download/dns/CdnUseTimeProxy;->sCndUseTimeProxy:Lcom/netease/download/dns/CdnUseTimeProxy;

    .line 32
    :cond_0
    sget-object v0, Lcom/netease/download/dns/CdnUseTimeProxy;->sCndUseTimeProxy:Lcom/netease/download/dns/CdnUseTimeProxy;

    return-object v0
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;

    .line 63
    iget v0, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    if-lez v0, :cond_0

    .line 64
    iget v0, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    .line 67
    :cond_0
    iget v0, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mUseTime:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mUseTime:J

    :cond_1
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 8

    .line 42
    iget-object v0, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;

    .line 45
    iget v0, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    if-nez v0, :cond_1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mStartTime:J

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;-><init>(JIJ)V

    .line 51
    iget-object v1, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mStartTime:J

    move-object p1, v0

    .line 54
    :cond_1
    :goto_0
    iget v0, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    return-void
.end method
