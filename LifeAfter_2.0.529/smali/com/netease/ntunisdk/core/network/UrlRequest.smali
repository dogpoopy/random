.class public Lcom/netease/ntunisdk/core/network/UrlRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/network/UrlRequest$XSignHandler;
    }
.end annotation


# instance fields
.field a:Lcom/netease/ntunisdk/core/network/UrlMethod;

.field b:Ljava/lang/String;

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/core/network/KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field e:[B

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field protected resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/core/network/UrlMethod;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/core/network/UrlMethod;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/core/network/KeyValuePair;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    iput-object p1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->a:Lcom/netease/ntunisdk/core/network/UrlMethod;

    iput-object p3, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->c:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->d:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->d:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/netease/ntunisdk/core/network/Utils;->encodeQs(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "?"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p4, "&"

    :cond_0
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->f:Ljava/lang/String;

    invoke-static {p5}, Lcom/netease/ntunisdk/core/network/UrlRequest;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->e:[B

    iput p6, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->g:I

    iput p7, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/core/network/UrlMethod;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/core/network/UrlMethod;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/core/network/KeyValuePair;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/core/network/KeyValuePair;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-static {p5, v0}, Lcom/netease/ntunisdk/core/network/Utils;->encodeQs(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/netease/ntunisdk/core/network/NetConst;->NETWORK_CONNECTION_TIMEOUT:I

    sget v8, Lcom/netease/ntunisdk/core/network/NetConst;->NETWORK_SOCKET_TIMEOUT:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/netease/ntunisdk/core/network/UrlRequest;-><init>(Lcom/netease/ntunisdk/core/network/UrlMethod;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/core/network/UrlMethod;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/core/network/UrlMethod;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/core/network/KeyValuePair;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    move-object v5, p5

    sget v6, Lcom/netease/ntunisdk/core/network/NetConst;->NETWORK_CONNECTION_TIMEOUT:I

    sget v7, Lcom/netease/ntunisdk/core/network/NetConst;->NETWORK_SOCKET_TIMEOUT:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/netease/ntunisdk/core/network/UrlRequest;-><init>(Lcom/netease/ntunisdk/core/network/UrlMethod;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public addPostDataBytes([B)Lcom/netease/ntunisdk/core/network/UrlRequest;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->e:[B

    invoke-static {p1}, Lcom/netease/ntunisdk/core/network/UrlRequest;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->f:Ljava/lang/String;

    return-object p0
.end method

.method public addPostDataString(Ljava/lang/String;)Lcom/netease/ntunisdk/core/network/UrlRequest;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/network/UrlRequest;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->e:[B

    return-object p0
.end method

.method public handleXSign(Lcom/netease/ntunisdk/core/network/UrlRequest$XSignHandler;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/netease/ntunisdk/core/network/UrlRequest$XSignHandler;->handleXSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setResolveDnsResult(Lcom/netease/ntunisdk/core/network/ResolveDnsResult;)Lcom/netease/ntunisdk/core/network/UrlRequest;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->url:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->a:Lcom/netease/ntunisdk/core/network/UrlMethod;

    iget-object v2, v2, Lcom/netease/ntunisdk/core/network/UrlMethod;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nData:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/core/network/UrlRequest;->e:[B

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
