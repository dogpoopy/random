.class public Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSION:Ljava/lang/String; = "1.6.1"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->e:Z

    return-void
.end method


# virtual methods
.method public getPluginKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_SERVER_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&cv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&cp=a&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&app_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_APP_MODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDynamicRegister()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->e:Z

    return v0
.end method
