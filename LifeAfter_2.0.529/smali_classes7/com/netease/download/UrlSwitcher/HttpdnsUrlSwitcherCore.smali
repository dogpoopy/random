.class public Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;
.super Ljava/lang/Object;
.source "HttpdnsUrlSwitcherCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;,
        Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpdnsUrlSwitcherCore"

.field private static sHttpdnsUrlSwitcherCore:Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;


# instance fields
.field public mHttpdnsUrlUnitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;",
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstances()Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;
    .locals 1

    .line 36
    sget-object v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->sHttpdnsUrlSwitcherCore:Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    invoke-direct {v0}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;-><init>()V

    sput-object v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->sHttpdnsUrlSwitcherCore:Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    .line 40
    :cond_0
    sget-object v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->sHttpdnsUrlSwitcherCore:Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/httpdns/HttpdnsDomain2IpParams$Unit;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/download/httpdns/HttpdnsDomain2IpParams$Unit;

    .line 49
    iget-object v2, v1, Lcom/netease/download/httpdns/HttpdnsDomain2IpParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    .line 50
    iget-object v1, v1, Lcom/netease/download/httpdns/HttpdnsDomain2IpParams$Unit;->domain:Ljava/lang/String;

    const/4 v3, 0x0

    .line 52
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 53
    new-instance v4, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_1
    new-instance p2, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    invoke-direct {p2, v0}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;-><init>(Ljava/util/ArrayList;)V

    .line 59
    iget-object v0, p0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
