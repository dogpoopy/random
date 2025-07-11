.class public Lcom/netease/ntunisdk/modules/api/ModulesCallbackEntiy;
.super Ljava/lang/Object;
.source "ModulesCallbackEntiy.java"


# instance fields
.field public cb:Lcom/netease/ntunisdk/modules/api/ModulesCallback;

.field public cbId:I

.field public recPush:Z

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netease/ntunisdk/modules/api/ModulesCallback;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/api/ModulesCallbackEntiy;->recPush:Z

    .line 8
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/utils/IdGenerator;->getUniqueId()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/modules/api/ModulesCallbackEntiy;->cbId:I

    .line 9
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/api/ModulesCallbackEntiy;->source:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/api/ModulesCallbackEntiy;->recPush:Z

    .line 11
    iput-object p3, p0, Lcom/netease/ntunisdk/modules/api/ModulesCallbackEntiy;->cb:Lcom/netease/ntunisdk/modules/api/ModulesCallback;

    return-void
.end method
