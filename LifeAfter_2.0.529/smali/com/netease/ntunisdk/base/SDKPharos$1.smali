.class Lcom/netease/ntunisdk/base/SDKPharos$1;
.super Lcom/netease/pharos/PharosListener;
.source "SDKPharos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SDKPharos;->setPharosListener(Lcom/netease/pharos/PharosListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SDKPharos;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SDKPharos;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKPharos$1;->a:Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-direct {p0}, Lcom/netease/pharos/PharosListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPharosPolicy(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "SDKPharos"

    const-string v1, "SDKPharos [PharosListener] \u8bbe\u5907\u63a2\u6d4b\u3001\u533a\u57df\u51b3\u7b56\u56de\u8c03"

    .line 121
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDKPharos [PharosListener] [onPharosPolicy] data = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKPharos$1;->a:Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SDKPharos;->a(Lcom/netease/ntunisdk/base/SDKPharos;)Lcom/netease/pharos/PharosListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKPharos$1;->a:Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SDKPharos;->a(Lcom/netease/ntunisdk/base/SDKPharos;)Lcom/netease/pharos/PharosListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/pharos/PharosListener;->onPharosPolicy(Lorg/json/JSONObject;)V

    .line 130
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    const-string v3, "pharosOnPharosPolicy"

    .line 131
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "result"

    .line 132
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDKPharos [PharosListener] [onPharosPolicy] Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPharosQos(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "SDKPharos"

    const-string v1, "SDKPharos [PharosListener] Qos\u6a21\u5757\u56de\u8c03"

    .line 142
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDKPharos [PharosListener] [onPharosQos] data = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKPharos$1;->a:Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SDKPharos;->a(Lcom/netease/ntunisdk/base/SDKPharos;)Lcom/netease/pharos/PharosListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKPharos$1;->a:Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SDKPharos;->a(Lcom/netease/ntunisdk/base/SDKPharos;)Lcom/netease/pharos/PharosListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/pharos/PharosListener;->onPharosQos(Lorg/json/JSONObject;)V

    .line 151
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    const-string v3, "pharosOnPharosQos"

    .line 152
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "result"

    .line 153
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDKPharos [PharosListener] [onPharosQos] Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPharosServer(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "SDKPharos"

    const-string v1, "SDKPharos [PharosListener] \u52a0\u901f\u5217\u8868\u6a21\u5757\u56de\u8c03"

    .line 163
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDKPharos [PharosListener] [onPharosServer] data = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKPharos$1;->a:Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SDKPharos;->a(Lcom/netease/ntunisdk/base/SDKPharos;)Lcom/netease/pharos/PharosListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKPharos$1;->a:Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SDKPharos;->a(Lcom/netease/ntunisdk/base/SDKPharos;)Lcom/netease/pharos/PharosListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/pharos/PharosListener;->onPharosServer(Lorg/json/JSONObject;)V

    .line 172
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    const-string v3, "pharosOnPharosServer"

    .line 173
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "result"

    .line 174
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDKPharos [PharosListener] [onPharosServer] Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "SDKPharos"

    const-string v1, "SDKPharos [PharosListener] \u5168\u90e8\u7ed3\u679c\u56de\u8c03"

    .line 97
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDKPharos [PharosListener] [onResult] data = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKPharos$1;->a:Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SDKPharos;->a(Lcom/netease/ntunisdk/base/SDKPharos;)Lcom/netease/pharos/PharosListener;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "SDKPharos [PharosListener] mPharosListener callback"

    .line 101
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKPharos$1;->a:Lcom/netease/ntunisdk/base/SDKPharos;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SDKPharos;->a(Lcom/netease/ntunisdk/base/SDKPharos;)Lcom/netease/pharos/PharosListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string v1, "SDKPharos [PharosListener] mPharosListener is null"

    .line 105
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    const-string v3, "pharosOnResult"

    .line 110
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "result"

    .line 111
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDKPharos [PharosListener] [onResult] Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
