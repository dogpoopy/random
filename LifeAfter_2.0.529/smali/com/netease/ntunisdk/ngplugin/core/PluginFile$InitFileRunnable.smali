.class Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;
.super Ljava/lang/Object;
.source "PluginFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/ngplugin/core/PluginFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitFileRunnable"
.end annotation


# instance fields
.field callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

.field context:Landroid/content/Context;

.field private final packageName:Ljava/lang/String;

.field private final pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

.field private final pluginName:Ljava/lang/String;

.field private final skinCheckInfo:Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

.field final synthetic this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    .line 172
    iput-object p7, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    .line 173
    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginName:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->packageName:Ljava/lang/String;

    .line 175
    iput-object p5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    .line 176
    iput-object p6, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->skinCheckInfo:Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 182
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Ljava/io/File;->setReadOnly()Z

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const-string v4, "pluginFile: "

    if-nez v2, :cond_4

    .line 185
    :try_start_1
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginName:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    .line 186
    invoke-static {v6}, Lcom/netease/ntunisdk/ngplugin/utils/PluginFileUtils;->spliceSkinPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->packageName:Ljava/lang/String;

    invoke-static {v2, v5, v6, v7}, Lcom/netease/ntunisdk/ngplugin/utils/PluginFileUtils;->unzipCopyFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 188
    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    if-eqz v5, :cond_9

    .line 189
    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    iget-object v6, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->setPluginFileName(Ljava/lang/String;)V

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 191
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 242
    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    return-void

    .line 195
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->setReadOnly()Z

    .line 196
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->getInstance()Lcom/netease/ntunisdk/ngplugin/core/PluginCore;

    move-result-object v2

    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    invoke-virtual {v2, v4, v5, v6}, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->loadPlugin(Ljava/io/File;Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    move-result-object v2

    .line 198
    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->skinCheckInfo:Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

    invoke-virtual {v4, v2, v5}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->checkPluginFile(Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->checkForceShutdownSkin(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    invoke-interface {v4, v3, v2}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;->onResult(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    goto/16 :goto_1

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    invoke-interface {v2, v0, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;->onResult(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    goto/16 :goto_1

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    invoke-interface {v2, v0, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;->onResult(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    goto/16 :goto_1

    .line 209
    :cond_3
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    if-eqz v2, :cond_9

    .line 210
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    invoke-interface {v2, v0, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;->onResult(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    goto/16 :goto_1

    .line 214
    :cond_4
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    if-eqz v2, :cond_9

    .line 215
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->setPluginFileName(Ljava/lang/String;)V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginName:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    .line 218
    invoke-static {v4}, Lcom/netease/ntunisdk/ngplugin/utils/PluginFileUtils;->spliceSkinPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/netease/ntunisdk/ngplugin/utils/PluginFileUtils;->unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 220
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 221
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->getInstance()Lcom/netease/ntunisdk/ngplugin/core/PluginCore;

    move-result-object v2

    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    invoke-virtual {v2, v4, v5, v6}, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->loadPlugin(Ljava/io/File;Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    .line 224
    :goto_0
    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->skinCheckInfo:Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

    invoke-virtual {v4, v2, v5}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->checkPluginFile(Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 225
    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->this$0:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    iget-object v5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->checkForceShutdownSkin(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 226
    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    invoke-interface {v4, v3, v2}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;->onResult(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    goto :goto_1

    .line 228
    :cond_6
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    invoke-interface {v2, v0, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;->onResult(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    goto :goto_1

    .line 231
    :cond_7
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    invoke-interface {v2, v0, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;->onResult(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 236
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    if-eqz v2, :cond_8

    .line 238
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->callback:Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;

    invoke-interface {v2, v0, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;->onResult(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    :cond_8
    const-string v0, "error when copying the skin package file, use the default skin"

    .line 240
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    :cond_9
    :goto_1
    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    return-void

    :goto_2
    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;->context:Landroid/content/Context;

    .line 243
    throw v0
.end method
