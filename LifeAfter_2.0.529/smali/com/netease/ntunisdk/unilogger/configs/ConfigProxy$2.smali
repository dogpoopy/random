.class Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;
.super Ljava/lang/Object;
.source "ConfigProxy.java"

# interfaces
.implements Lcom/netease/ntunisdk/unilogger/network/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->requestRemoteConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetCallback(ILjava/lang/String;)V
    .locals 2

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigProxy [requestRemoteConfig] ConfigRequest [onNetCallback] code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xc8

    if-ne v0, p1, :cond_2

    .line 137
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "{}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 139
    sget-object p1, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerDirPath:Ljava/lang/String;

    const-string v0, "unilogger_local_config_file"

    invoke-static {p2, p1, v0}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigProxy [requestRemoteConfig] ConfigRequest [onNetCallback] remoteConfig write to file, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", filePath="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerDirPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "unilogger_local_config_file"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    .line 142
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {p2}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$200(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Lcom/netease/ntunisdk/unilogger/configs/Config;

    move-result-object p2

    if-nez p2, :cond_0

    .line 145
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    new-instance v0, Lcom/netease/ntunisdk/unilogger/configs/Config;

    invoke-direct {v0}, Lcom/netease/ntunisdk/unilogger/configs/Config;-><init>()V

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$202(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;Lcom/netease/ntunisdk/unilogger/configs/Config;)Lcom/netease/ntunisdk/unilogger/configs/Config;

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {p2}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$200(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Lcom/netease/ntunisdk/unilogger/configs/Config;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    iget-object v0, v0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->tConfigCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->parseConfig(Lorg/json/JSONObject;Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;Z)V

    goto :goto_0

    .line 151
    :cond_1
    sget-object p1, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerDirPath:Ljava/lang/String;

    const-string p2, "unilogger_local_config_file"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->deleteFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ConfigProxy [requestRemoteConfig] ConfigRequest [onNetCallback] Exception="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p2, -0x2

    if-ne p2, p1, :cond_3

    const-string p1, "ConfigProxy [requestRemoteConfig] delete file:unilogger_local_config_file"

    .line 160
    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 161
    sget-object p1, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerDirPath:Ljava/lang/String;

    const-string p2, "unilogger_local_config_file"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->deleteFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$200(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;)Lcom/netease/ntunisdk/unilogger/configs/Config;

    move-result-object p1

    if-nez p1, :cond_3

    .line 163
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy$2;->this$0:Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    new-instance p2, Lcom/netease/ntunisdk/unilogger/configs/Config;

    invoke-direct {p2}, Lcom/netease/ntunisdk/unilogger/configs/Config;-><init>()V

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->access$202(Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;Lcom/netease/ntunisdk/unilogger/configs/Config;)Lcom/netease/ntunisdk/unilogger/configs/Config;

    .line 166
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
