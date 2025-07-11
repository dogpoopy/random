.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;
.super Landroid/os/AsyncTask;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetVideoUrlTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;


# direct methods
.method private constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V
    .locals 0

    .line 1827
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;)V
    .locals 0

    .line 1827
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1827
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "cdnfree"

    .line 1835
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/16 v4, 0x2710

    const/4 v5, 0x0

    const/16 v6, 0x16

    if-gt v1, v6, :cond_0

    .line 1837
    :try_start_0
    aget-object p1, p1, v5

    .line 1838
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1839
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1840
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1841
    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2700(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1842
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1843
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 1845
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v1, v3, :cond_3

    .line 1847
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    const/4 v1, 0x0

    .line 1854
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :catch_4
    move-exception p1

    const/4 v1, 0x0

    .line 1852
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :catch_5
    move-exception p1

    const/4 v1, 0x0

    .line 1850
    :goto_2
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto/16 :goto_9

    .line 1860
    :cond_0
    :try_start_2
    new-instance v1, Ljava/net/URL;

    aget-object p1, p1, v5

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1863
    :try_start_3
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1864
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    .line 1865
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "User-agent"

    .line 1866
    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2700(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 1868
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v1, v3, :cond_2

    .line 1870
    :try_start_4
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1871
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1872
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1874
    :goto_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1875
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1877
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_6
    move-exception v4

    goto :goto_6

    :catch_7
    move-exception v4

    goto :goto_8

    :cond_2
    :goto_4
    if-eqz p1, :cond_3

    .line 1886
    :try_start_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_9

    :catch_8
    move-exception p1

    .line 1888
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catch_9
    move-exception v4

    goto :goto_5

    :catch_a
    move-exception v4

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_b
    move-exception v4

    move-object p1, v2

    :goto_5
    const/4 v1, 0x0

    .line 1882
    :goto_6
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_3

    .line 1886
    :try_start_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_c
    move-exception v4

    move-object p1, v2

    :goto_7
    const/4 v1, 0x0

    .line 1880
    :goto_8
    :try_start_8
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p1, :cond_3

    .line 1886
    :try_start_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1893
    :cond_3
    :goto_9
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$900()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==============response code========"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x65

    const-string v4, ""

    if-eq v1, v3, :cond_4

    .line 1896
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnError(II)Z

    return-object v4

    .line 1901
    :cond_4
    :try_start_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_9

    const-string p1, "vbrname_list"

    .line 1904
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 1905
    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1906
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2800(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1909
    :cond_5
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "videourl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2902(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 1910
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "cdn_sel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2102(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 1911
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "anchorccid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3002(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1912
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "transformer_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2202(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1913
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "gametype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3102(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1914
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "vbrname_sel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3202(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 1915
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "roomId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1916
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v2, "subId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2402(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1917
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1918
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1919
    :cond_6
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "mplayersetting"

    .line 1920
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1921
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    const-string v1, "maxjitter"

    const-string v2, "minjitter"

    const-string v3, "buffertime"

    const-string v6, "fwdnew"

    const-string v7, "canfwd"

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    :try_start_b
    const-string v0, "default"

    .line 1923
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1924
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v0, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3602(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)Z

    .line 1925
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v0, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3702(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)Z

    .line 1926
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3802(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1927
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3902(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1928
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4002(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1929
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z

    move-result v7

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3700(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z

    move-result v8

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3800(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v9

    const/4 v10, 0x0

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v11

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v12

    invoke-virtual/range {v6 .. v12}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setPlayControlParameters(ZZIIII)V

    goto :goto_b

    .line 1930
    :cond_7
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    const-string v0, "cell"

    .line 1931
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1932
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v0, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3602(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)Z

    .line 1933
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v0, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3702(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)Z

    .line 1934
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3802(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1935
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3902(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1936
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4002(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 1937
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z

    move-result v7

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3700(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z

    move-result v8

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3800(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v9

    const/4 v10, 0x0

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v11

    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v12

    invoke-virtual/range {v6 .. v12}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setPlayControlParameters(ZZIIII)V

    .line 1941
    :cond_8
    :goto_b
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v0

    iput v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->anchorCCid:I

    .line 1942
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->cdn:Ljava/lang/String;

    .line 1943
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->src:Ljava/lang/String;

    .line 1944
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v0

    iput v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->roomId:I

    .line 1945
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v0

    iput v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->subId:I

    .line 1946
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v0

    iput v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->templateType:I

    .line 1947
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->urs:Ljava/lang/String;

    .line 1948
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v0

    iput v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->gametype:I

    .line 1949
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1700(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->sid:Ljava/lang/String;

    .line 1950
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v0

    iput-wide v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->uid:J

    .line 1951
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->strLogExtraInfo:Ljava/lang/String;

    .line 1952
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2000()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->version:Ljava/lang/String;

    .line 1953
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 1954
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object p1, p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$1800()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltv/danmaku/ijk/media/player/PlayerConfig;->videoUrl:Ljava/lang/String;

    .line 1955
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2900(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1957
    :cond_9
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnError(II)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    return-object v4

    :catch_d
    move-exception p1

    .line 1961
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object v2, p1

    :goto_c
    if-eqz v2, :cond_a

    .line 1886
    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    goto :goto_d

    :catch_e
    move-exception p1

    .line 1888
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1890
    :cond_a
    :goto_d
    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1827
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    if-eq p1, v0, :cond_2

    .line 1971
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    invoke-static {}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->GetUnisdkDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/PlayerConfig;->unisdkDeviceId:Ljava/lang/String;

    .line 1972
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    invoke-static {}, Ltv/danmaku/ijk/media/player/utils/SNUtils;->GetSN()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/danmaku/ijk/media/player/PlayerConfig;->client_no:Ljava/lang/String;

    .line 1973
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->playerConfig:Ltv/danmaku/ijk/media/player/PlayerConfig;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setPlayerConfig(Ltv/danmaku/ijk/media/player/PlayerConfig;)V

    .line 1974
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$2800(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$onGetVbrListListener;->setVbrList(Ljava/util/List;Ljava/lang/String;)V

    .line 1976
    :cond_0
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4500()Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1977
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$4500()Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$3300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;->notifyIsFreeStream(I)V

    .line 1978
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setRadicalRealTimeFlag(Z)V

    .line 1980
    :try_start_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1992
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1989
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1986
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1983
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1994
    :goto_0
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$GetVideoUrlTask;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    :cond_2
    return-void
.end method
