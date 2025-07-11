.class public Lcom/netease/ntunisdk/ngplugin/dynamic/TextHandler;
.super Ljava/lang/Object;
.source "TextHandler.java"


# instance fields
.field private final appId:Ljava/lang/String;

.field private final cv:Ljava/lang/String;

.field private final project:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextHandler;->cv:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextHandler;->appId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextHandler;->project:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrlKey()Ljava/lang/String;
    .locals 2

    .line 22
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextHandler;->project:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&cv="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextHandler;->cv:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&cp=a&app_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextHandler;->appId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&app_mode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_APP_MODE:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
