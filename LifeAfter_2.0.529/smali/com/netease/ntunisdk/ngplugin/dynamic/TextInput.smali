.class public Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;
.super Ljava/lang/Object;
.source "TextInput.java"


# instance fields
.field private callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

.field private enable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->enable:Z

    return-void
.end method

.method public constructor <init>(ZLcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

    .line 15
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->enable:Z

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->enable:Z

    return v0
.end method

.method public setCallback(Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->callback:Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->enable:Z

    return-void
.end method
