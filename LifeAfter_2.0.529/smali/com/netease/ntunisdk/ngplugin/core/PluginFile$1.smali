.class Lcom/netease/ntunisdk/ngplugin/core/PluginFile$1;
.super Ljava/lang/Object;
.source "PluginFile.java"

# interfaces
.implements Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

.field final synthetic val$pluginFileCallBack:Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$1;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$1;->val$pluginFileCallBack:Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onResult(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V
    .locals 2

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$1;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->access$002(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Z)Z

    .line 50
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$1;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->access$102(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;)Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$1;->val$pluginFileCallBack:Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;->onFinish(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
