.class Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;
.super Ljava/lang/Object;
.source "HTTPQueue.java"

# interfaces
.implements Lcom/netease/ntunisdk/httpdns/HttpDnsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/HTTPQueue;->HTTPDnsDo(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

.field final synthetic val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILorg/json/JSONObject;)V
    .locals 12

    const-string v0, "POST"

    .line 603
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    instance-of v1, v1, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz p1, :cond_1

    const/4 v7, 0x3

    if-ne v7, p1, :cond_0

    goto :goto_0

    .line 735
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "HTTPDnsDo, httpdns failed, code=%s, result=%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    :goto_0
    const-string v7, "domain"

    .line 607
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "httpdnsips"

    .line 609
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "addrs"

    if-eqz v8, :cond_2

    .line 611
    :try_start_1
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 613
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 615
    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    invoke-virtual {v11, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v2

    .line 619
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "dnsips"

    .line 620
    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 622
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 624
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 626
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 632
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 633
    iget-object v9, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v9}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "get IP: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for host: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from httpdns resolver success!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v9, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget-object v9, v9, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    invoke-virtual {v9, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 636
    iget-object v10, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget-object v10, v10, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 637
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_2

    .line 639
    :cond_4
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    :goto_2
    move-object v2, v9

    const-string v9, "host"

    .line 641
    invoke-virtual {v2, v9, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    instance-of v9, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v9, :cond_5

    .line 644
    move-object v9, v2

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    .line 645
    new-instance v10, Lcom/netease/ntunisdk/base/utils/TLSSniSocketFactory;

    invoke-direct {v10, v9}, Lcom/netease/ntunisdk/base/utils/TLSSniSocketFactory;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 646
    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 647
    new-instance v10, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3$1;

    invoke-direct {v10, p0, v8, v7}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3$1;-><init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 663
    :cond_5
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget v7, v7, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->soTimeout:I

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 664
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget v7, v7, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->connectionTimeout:I

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 665
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget-object v7, v7, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 666
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_3

    :cond_6
    const-string v7, "GET"

    .line 669
    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 674
    :goto_3
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {v7}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$600(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {v7}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$600(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 675
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {v7}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$600(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 676
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v9, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 681
    :cond_7
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget-object v7, v7, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 682
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$300(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "UTF-8"

    if-nez v0, :cond_8

    .line 683
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 684
    iget-object v8, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {v8}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$300(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 685
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 686
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_6

    .line 687
    :cond_8
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    iget-object v8, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {v8}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->access$400(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_a

    const-string v10, "&"

    .line 691
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_a
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 695
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 699
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    iget-object v8, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget-object v8, v8, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->keyRSA:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 701
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v8, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget-object v8, v8, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->keyRSA:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/netease/ntunisdk/base/utils/Crypto;->rsaEncrypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "Encryption"

    const-string v9, "rsa"

    .line 702
    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 705
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 706
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 707
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 711
    :cond_d
    :goto_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 712
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v7}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "HTTPDnsDo httRequst code:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    .line 717
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget-object v7, v7, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    check-cast v7, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;

    iput v0, v7, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;->responseCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 719
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 721
    :catch_0
    :try_start_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "input stream invalid, get error stream instead"

    invoke-static {v0, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_7

    .line 725
    :cond_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_f

    .line 729
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$700(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 731
    :cond_f
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "HTTPDnsDo, httpdns success, code=%s, result=%s"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v5

    aput-object p2, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HTTPDnsDo, strResp=%s, item=%s"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v6, v0, v5

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    aput-object v3, v0, v4

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_10
    :goto_8
    if-eqz v2, :cond_12

    .line 745
    :goto_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_a

    :catchall_0
    move-exception p1

    goto :goto_b

    :catch_1
    move-exception p1

    .line 738
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 739
    iget-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-static {p2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$200(Lcom/netease/ntunisdk/base/utils/HTTPQueue;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "HTTPDnsDo httPost exception:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_11

    .line 741
    iget-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    iget-object p2, p2, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    check-cast p2, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;

    iput-object p1, p2, Lcom/netease/ntunisdk/base/utils/HTTPCallbackExt;->throwable:Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_11
    if-eqz v2, :cond_12

    goto :goto_9

    .line 749
    :cond_12
    :goto_a
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    iget-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->val$item:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {p1, p2, v6}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$800(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;Ljava/lang/String;)V

    return-void

    :goto_b
    if-eqz v2, :cond_13

    .line 745
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 747
    :cond_13
    goto :goto_d

    :goto_c
    throw p1

    :goto_d
    goto :goto_c
.end method
