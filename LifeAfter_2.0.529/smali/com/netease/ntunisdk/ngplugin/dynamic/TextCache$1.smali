.class Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$1;
.super Ljava/lang/Object;
.source "TextCache.java"

# interfaces
.implements Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$1;->this$0:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;ZLcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$1;->this$0:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->access$000(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;

    invoke-direct {v1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextCache TextCache init success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " switchHashMap put url: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 44
    invoke-interface {p3}, Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;->onFinish()V

    :cond_0
    return-void
.end method
