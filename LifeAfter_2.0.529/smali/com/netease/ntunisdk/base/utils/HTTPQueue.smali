.class public Lcom/netease/ntunisdk/base/utils/HTTPQueue;
.super Ljava/lang/Object;
.source "HTTPQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;,
        Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x64

.field public static final CONNECTION_TIMEOUT:I = 0x3a98

.field public static final HTTPQUEUE_COMMON:Ljava/lang/String; = "UniSDK"

.field public static final HTTPQUEUE_PAY:Ljava/lang/String; = "PAY"

.field private static final KEY_QUEUE_DELAY:Ljava/lang/String; = "delay"

.field private static final KEY_QUEUE_ITEM_PREFIX:Ljava/lang/String; = "item_"

.field private static final KEY_QUEUE_RESEND:Ljava/lang/String; = "resend"

.field private static final MAX_RETRY:I = 0x5

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final SO_TIMEOUT:I = 0x3a98

.field private static s_instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/utils/HTTPQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static s_lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private TAG:Ljava/lang/String;

.field private linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private m_callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

.field private m_context:Landroid/content/Context;

.field private m_executorService:Ljava/util/concurrent/ExecutorService;

.field private m_name:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_instances:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "UniSDK HTTPQ_"

    .line 42
    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    .line 70
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->obj:Ljava/lang/Object;

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_name:Ljava/lang/String;

    .line 79
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 80
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-wide/16 v3, 0x1388

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private HTTPDnsDo(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v1, "HTTPDnsDo"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 596
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "domain"

    .line 597
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "oversea"

    .line 598
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "EB"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 599
    invoke-static {}, Lcom/netease/ntunisdk/httpdns/HttpDNSProxy;->getInstance()Lcom/netease/ntunisdk/httpdns/HttpDNSProxy;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;-><init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/httpdns/HttpDNSProxy;->httpdns(Lorg/json/JSONObject;Lcom/netease/ntunisdk/httpdns/HttpDnsCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 756
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private HTTPDo(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/lang/String;
    .locals 10

    const-string v0, "POST"

    .line 769
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v2, "HTTPDo"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    .line 772
    iget-object v2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    instance-of v2, v2, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 775
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->host:Ljava/lang/String;

    .line 777
    iget-object v7, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 778
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    :goto_0
    move-object v5, v6

    .line 783
    iget v6, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->soTimeout:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 784
    iget v6, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->connectionTimeout:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 785
    iget-object v6, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 786
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_1

    :cond_1
    const-string v6, "GET"

    .line 789
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 794
    :goto_1
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$600(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$600(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 795
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$600(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 796
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 801
    :cond_2
    iget-object v6, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 802
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$300(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "UTF-8"

    if-nez v0, :cond_3

    .line 803
    :try_start_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 804
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$300(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 805
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 806
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_4

    .line 807
    :cond_3
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    const-string v9, "&"

    .line 811
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_5
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 815
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 819
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    iget-object v7, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->keyRSA:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 821
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v7, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->keyRSA:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/netease/ntunisdk/base/utils/Crypto;->rsaEncrypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "Encryption"

    const-string v8, "rsa"

    .line 822
    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 825
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 826
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 827
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 831
    :cond_8
    :goto_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v6, 0x249

    if-eq v0, v6, :cond_9

    .line 832
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    iput-boolean v6, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->isNeedHttpDns:Z

    .line 833
    iget-object v6, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v7, "httRequst code:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    .line 838
    iget-object v6, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    check-cast v6, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;

    iput v0, v6, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;->responseCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 842
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v6, "input stream invalid, get error stream instead"

    invoke-static {v0, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_6

    .line 846
    :cond_a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_b

    .line 850
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->readHttpResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    if-eqz v5, :cond_d

    .line 862
    :goto_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :catchall_0
    move-exception p1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 854
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 855
    iget-object v6, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httPost exception:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_c

    .line 857
    iget-object v2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    check-cast v2, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;

    iput-object v0, v2, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;->throwable:Ljava/lang/Throwable;

    .line 859
    :cond_c
    iput-boolean v4, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->isNeedHttpDns:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_d

    goto :goto_7

    .line 866
    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    aput-object p1, v2, v4

    const-string p1, "HTTPDo, strResp=%s, item=%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :goto_9
    if-eqz v5, :cond_e

    .line 862
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 864
    :cond_e
    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method public static NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;
    .locals 2

    .line 250
    new-instance v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;-><init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue$1;)V

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Landroid/content/SharedPreferences;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->stripIpWithPort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->readHttpResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->handleOnCall(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->send(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method public static clear()V
    .locals 2

    .line 302
    sget-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_instances:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 304
    sput-object v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_instances:Ljava/util/Map;

    .line 306
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_lock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_1

    .line 307
    sput-object v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_lock:Ljava/util/concurrent/locks/ReentrantLock;

    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;
    .locals 2

    .line 84
    sget-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_lock:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 88
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 89
    sget-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_instances:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_instances:Ljava/util/Map;

    :cond_1
    const/4 v0, 0x0

    .line 93
    sget-object v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    sget-object v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    :cond_2
    if-nez v0, :cond_3

    .line 97
    new-instance v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;-><init>(Ljava/lang/String;I)V

    .line 98
    sget-object v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_instances:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_3
    sget-object p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->s_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method private getSharedPref()Landroid/content/SharedPreferences;
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->obj:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTPQ_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->sp:Landroid/content/SharedPreferences;

    .line 413
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 415
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private handleOnCall(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;Ljava/lang/String;)V
    .locals 2

    .line 531
    iget-object v0, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    :cond_0
    if-eqz v0, :cond_1

    .line 536
    iget-object v1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lcom/netease/ntunisdk/base/utils/HTTPCallback;->processResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 538
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->handleResponse(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;Z)V

    return-void
.end method

.method private handleResponse(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;Z)V
    .locals 5

    const-string v0, ""

    .line 556
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "handleResponse, item.id=%s, bResend=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_"

    if-eqz p2, :cond_4

    .line 557
    iget v2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    if-gtz v2, :cond_0

    goto/16 :goto_1

    .line 566
    :cond_0
    iget p2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    sub-int/2addr p2, v4

    iput p2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 569
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->marshal()Ljava/lang/String;

    move-result-object p2

    .line 570
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v3, "item to resend:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 573
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, v0

    .line 575
    :goto_0
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 576
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 577
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "resend"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 583
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 585
    :cond_2
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 558
    iget p2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    if-gtz p2, :cond_5

    .line 559
    iget-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v0, "reach max retry limit, give up"

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_5
    iget-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;

    if-eqz p2, :cond_6

    .line 562
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    return-void
.end method

.method private hasHttpDnsSDK(ZLjava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 542
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/SdkBase;->getSdkInstMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "httpdns"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "ENABLE_HTTP_DNS"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->isIp(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isIp(Ljava/lang/String;)Z
    .locals 2

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private readHttpResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 873
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x800

    new-array v3, v2, [B

    :goto_0
    const/4 v4, 0x0

    .line 876
    invoke-virtual {p1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 877
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 879
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    const-string v2, "UTF-8"

    .line 880
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 882
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 884
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 885
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readHttpResponse exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private send(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send itemId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->marshal()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "item_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 517
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "item.marshal()\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->HTTPDo(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/lang/String;

    move-result-object v0

    .line 522
    iget-boolean v1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->isNeedHttpDns:Z

    iget-object v2, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->host:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->hasHttpDnsSDK(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->HTTPDnsDo(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void

    .line 525
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->handleOnCall(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;Ljava/lang/String;)V

    return-void
.end method

.method private stripIpWithPort(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 762
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    .line 763
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public declared-synchronized addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
    .locals 3

    monitor-enter p0

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v1, "addItem, item="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2

    .line 466
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 467
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 469
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;-><init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 471
    :try_start_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExecutorService.execute exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    .line 474
    :cond_0
    :try_start_3
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v0, "ExecutorService have shutdown"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 477
    :cond_1
    :try_start_4
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v0, "ExecutorService null"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 480
    :cond_2
    :try_start_5
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v0, "linkedQueue full"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addItemDelay(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v1, "addItemDelay, item="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :try_start_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->marshal()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, ""

    .line 491
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 493
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v2, "item to resend delay:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 495
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resend_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_delay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resend_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_delay"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 502
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 504
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 507
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkResend()V
    .locals 2

    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v1, "checkResend"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 321
    monitor-exit p0

    return-void

    .line 323
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$1;-><init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 324
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkResendByThread()V
    .locals 7

    monitor-enter p0

    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "resend"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "resend"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ","

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 383
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 384
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "item_"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 386
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :try_start_1
    invoke-virtual {v4, v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->unmarshal(Ljava/lang/String;)V

    .line 389
    iget-object v3, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v4, "checkResend, item.method empty, ship"

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v3, "POST"

    .line 392
    iget-object v5, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$300(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    :cond_1
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v5, "checkResend, item null, ship"

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "item_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 396
    :cond_2
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkResend, itemId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/ApiRequestUtil;->modifySecureHeader(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    .line 398
    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 402
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 407
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized checkResendDelay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v1, "checkResendDelay"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 337
    monitor-exit p0

    return-void

    .line 339
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$2;-><init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 340
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;->mItem:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 281
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "resend"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "resend"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->linkedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5

    .line 293
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_5
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 296
    :try_start_2
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "close exception\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "get, url="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v1, "GET"

    .line 443
    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 444
    iput-object p1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 445
    iput-object p2, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 446
    invoke-virtual {v0, p3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v3, "get, url=%s, params=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v1, "GET"

    .line 453
    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    const-string v1, "?"

    .line 454
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 457
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v2, v2}, Lcom/netease/ntunisdk/base/utils/StrUtil;->createLinkString(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 458
    iput-object p3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 459
    invoke-virtual {v0, p4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    .line 460
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/netease/ntunisdk/base/utils/HTTPCallback;)V
    .locals 3

    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string v1, "init, ctx="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 257
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;

    .line 258
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const-string p2, "set context again"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 261
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_context:Landroid/content/Context;

    .line 262
    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->m_callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    .line 263
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getSharedPref()Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onNetworkConnected()V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "post, url=%s, bodyStr=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v1, "POST"

    .line 421
    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 422
    iput-object p1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 423
    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    .line 424
    iput-object p3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 425
    invoke-virtual {v0, p4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    .line 426
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "post, url=%s, bodyPairs=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v1, "POST"

    .line 432
    iput-object v1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 433
    iput-object p1, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    .line 434
    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/util/Map;)V

    .line 435
    iput-object p3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    .line 436
    invoke-virtual {v0, p4}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    .line 437
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method public setCapacity(I)V
    .locals 0

    return-void
.end method
