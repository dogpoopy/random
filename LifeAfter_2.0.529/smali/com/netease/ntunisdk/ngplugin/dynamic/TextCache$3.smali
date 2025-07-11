.class Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;
.super Ljava/lang/Object;
.source "TextCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->registerAll(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$region:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;->this$0:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;->val$region:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;->this$0:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;->val$region:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->access$100(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    return-void
.end method
