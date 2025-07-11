.class public Lcom/CCMsgSdk/AddressManager;
.super Ljava/lang/Object;
.source "AddressManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/CCMsgSdk/AddressManager$AnsyTry;,
        Lcom/CCMsgSdk/AddressManager$AddressListener;
    }
.end annotation


# static fields
.field private static final DISTMSG_URL:Ljava/lang/String; = "http://api.cc.163.com/v1/distroommsg/serviceip"


# instance fields
.field private mAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigUrl:Ljava/lang/String;

.field private mLastSelectedIndex:I

.field private mListener:Lcom/CCMsgSdk/AddressManager$AddressListener;

.field private mQuerying:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/CCMsgSdk/AddressManager;->mLastSelectedIndex:I

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/CCMsgSdk/AddressManager;->mConfigUrl:Ljava/lang/String;

    .line 32
    iput-boolean v0, p0, Lcom/CCMsgSdk/AddressManager;->mQuerying:Z

    .line 64
    iput-object v1, p0, Lcom/CCMsgSdk/AddressManager;->mListener:Lcom/CCMsgSdk/AddressManager$AddressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/CCMsgSdk/AddressManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/CCMsgSdk/AddressManager;->queryAddressListInSubThread()V

    return-void
.end method

.method private handleHttpResponse(Ljava/lang/String;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 46
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "data"

    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "OK"

    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "addr_list"

    .line 49
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 50
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 51
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/CCMsgSdk/AddressManager;->mListener:Lcom/CCMsgSdk/AddressManager$AddressListener;

    if-eqz p1, :cond_2

    .line 59
    iget-object v2, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 56
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    iget-object p1, p0, Lcom/CCMsgSdk/AddressManager;->mListener:Lcom/CCMsgSdk/AddressManager$AddressListener;

    if-eqz p1, :cond_2

    .line 59
    iget-object v2, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1, v0}, Lcom/CCMsgSdk/AddressManager$AddressListener;->onGetAddress(Z)V

    :cond_2
    return-void

    .line 58
    :goto_2
    iget-object v2, p0, Lcom/CCMsgSdk/AddressManager;->mListener:Lcom/CCMsgSdk/AddressManager$AddressListener;

    if-eqz v2, :cond_4

    .line 59
    iget-object v3, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-interface {v2, v0}, Lcom/CCMsgSdk/AddressManager$AddressListener;->onGetAddress(Z)V

    :cond_4
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 135
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v3, 0x400

    new-array v3, v3, [C

    :goto_0
    const/4 v4, -0x1

    .line 138
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    .line 139
    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 145
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    if-eqz p0, :cond_2

    .line 148
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 150
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private queryAddressListInSubThread()V
    .locals 7

    const-string v0, "[CCMsgSdk]"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/CCMsgSdk/AddressManager;->mConfigUrl:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "http://api.cc.163.com/v1/distroommsg/serviceip"

    .line 106
    :cond_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 109
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    invoke-static {v2}, Lcom/CCMsgSdk/AddressManager;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "http response: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    .line 112
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v2}, Lcom/CCMsgSdk/AddressManager;->handleHttpResponse(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    iput-boolean v1, p0, Lcom/CCMsgSdk/AddressManager;->mQuerying:Z

    if-eqz v3, :cond_2

    .line 124
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    .line 116
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/CCMsgSdk/AddressManager;->mListener:Lcom/CCMsgSdk/AddressManager$AddressListener;

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0, v1}, Lcom/CCMsgSdk/AddressManager$AddressListener;->onGetAddress(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :cond_1
    iput-boolean v1, p0, Lcom/CCMsgSdk/AddressManager;->mQuerying:Z

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_1
    return-void

    .line 122
    :goto_2
    iput-boolean v1, p0, Lcom/CCMsgSdk/AddressManager;->mQuerying:Z

    if-eqz v2, :cond_3

    .line 124
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public addressListEmpty()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWebSocketAddress()Ljava/lang/String;
    .locals 2

    .line 90
    iget v0, p0, Lcom/CCMsgSdk/AddressManager;->mLastSelectedIndex:I

    iget-object v1, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/CCMsgSdk/AddressManager;->mLastSelectedIndex:I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    iget v1, p0, Lcom/CCMsgSdk/AddressManager;->mLastSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    iget v1, p0, Lcom/CCMsgSdk/AddressManager;->mLastSelectedIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/CCMsgSdk/AddressManager;->mLastSelectedIndex:I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryAddressList()V
    .locals 2

    .line 75
    iget-boolean v0, p0, Lcom/CCMsgSdk/AddressManager;->mQuerying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "[CCMsgSdk]"

    const-string v1, "queryAddressList"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/CCMsgSdk/AddressManager;->mQuerying:Z

    .line 79
    iget-object v0, p0, Lcom/CCMsgSdk/AddressManager;->mAddressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/CCMsgSdk/AddressManager;->mLastSelectedIndex:I

    .line 81
    new-instance v1, Lcom/CCMsgSdk/AddressManager$AnsyTry;

    invoke-direct {v1, p0}, Lcom/CCMsgSdk/AddressManager$AnsyTry;-><init>(Lcom/CCMsgSdk/AddressManager;)V

    new-array v0, v0, [Ljava/lang/String;

    .line 82
    invoke-virtual {v1, v0}, Lcom/CCMsgSdk/AddressManager$AnsyTry;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setAddressListener(Lcom/CCMsgSdk/AddressManager$AddressListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/CCMsgSdk/AddressManager;->mListener:Lcom/CCMsgSdk/AddressManager$AddressListener;

    return-void
.end method

.method public setConfigUrl(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/CCMsgSdk/AddressManager;->mConfigUrl:Ljava/lang/String;

    return-void
.end method
