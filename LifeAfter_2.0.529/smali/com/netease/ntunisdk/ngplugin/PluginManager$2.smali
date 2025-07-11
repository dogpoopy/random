.class Lcom/netease/ntunisdk/ngplugin/PluginManager$2;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ngplugin/PluginManager;->initPlugin(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ngplugin/PluginManager;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ngplugin/PluginManager;Landroid/app/Activity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;->this$0:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin loading success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;->this$0:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->access$100(Lcom/netease/ntunisdk/ngplugin/PluginManager;)Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->setApplySkin(Z)V

    .line 203
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;->this$0:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->access$100(Lcom/netease/ntunisdk/ngplugin/PluginManager;)Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;->val$context:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->upgradeResource(Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    .line 204
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;->this$0:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->access$200(Lcom/netease/ntunisdk/ngplugin/PluginManager;)Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;->this$0:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->access$100(Lcom/netease/ntunisdk/ngplugin/PluginManager;)Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->loadSounds(Landroid/content/res/AssetManager;)V

    .line 205
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;->val$context:Landroid/app/Activity;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;->this$0:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->access$300(Lcom/netease/ntunisdk/ngplugin/PluginManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->access$400(Landroid/app/Activity;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method
