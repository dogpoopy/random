.class Lcom/netease/androidcrashhandler/config/ConfigCore$1;
.super Ljava/lang/Object;
.source "ConfigCore.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/net/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/config/ConfigCore;->fresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/config/ConfigCore;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 10

    const-string v0, "local_unwind"

    const-string v1, "message_enabled"

    const-string v2, "uncaught_exception_enabled"

    const-string v3, "logger_enabled"

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConfigCore [fresh] code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "trace"

    invoke-static {v5, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismMessageEnabled()Z

    move-result v4

    .line 199
    iget-object v6, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/config/ConfigCore;->isOpenUnknownCrash()Z

    move-result v6

    .line 200
    iget-object v7, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-static {v7}, Lcom/netease/androidcrashhandler/config/ConfigCore;->access$000(Lcom/netease/androidcrashhandler/config/ConfigCore;)Z

    move-result v7

    .line 201
    iget-object v8, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-virtual {v8}, Lcom/netease/androidcrashhandler/config/ConfigCore;->isLoaclUnwindEnabled()Z

    move-result v8

    .line 202
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v9, 0xc8

    if-ne v9, p1, :cond_3

    .line 204
    :try_start_0
    sget-object p1, Lcom/netease/androidcrashhandler/init/InitProxy;->sConfigFilePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-static {v9}, Lcom/netease/androidcrashhandler/config/ConfigCore;->access$100(Lcom/netease/androidcrashhandler/config/ConfigCore;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p2, p1, v9}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 208
    :try_start_1
    iget-object v3, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-static {v3, p2}, Lcom/netease/androidcrashhandler/config/ConfigCore;->access$002(Lcom/netease/androidcrashhandler/config/ConfigCore;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    move v7, p2

    goto :goto_3

    .line 210
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 211
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 212
    :try_start_3
    iget-object v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-static {v2, p2}, Lcom/netease/androidcrashhandler/config/ConfigCore;->access$202(Lcom/netease/androidcrashhandler/config/ConfigCore;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v6, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    move v6, p2

    goto :goto_3

    .line 214
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 215
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 216
    :try_start_5
    iget-object v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-static {v1, p2}, Lcom/netease/androidcrashhandler/config/ConfigCore;->access$302(Lcom/netease/androidcrashhandler/config/ConfigCore;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v4, p2

    goto :goto_2

    :catchall_2
    move-exception p1

    move v4, p2

    goto :goto_3

    .line 218
    :cond_2
    :goto_2
    :try_start_6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 219
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 220
    :try_start_7
    iget-object p2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->access$402(Lcom/netease/androidcrashhandler/config/ConfigCore;Z)Z

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ConfigCore [readLocalConfig] mLocalUnwindEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->access$400(Lcom/netease/androidcrashhandler/config/ConfigCore;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v8, p1

    goto :goto_4

    :catchall_3
    move-exception p2

    move v8, p1

    move-object p1, p2

    goto :goto_3

    :catchall_4
    move-exception p1

    .line 225
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ConfigCore [fresh] Exception = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_3
    :goto_4
    iget-object p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore$1;->this$0:Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-static {p1, v4, v6, v7, v8}, Lcom/netease/androidcrashhandler/config/ConfigCore;->access$500(Lcom/netease/androidcrashhandler/config/ConfigCore;ZZZZ)V

    return-void
.end method
