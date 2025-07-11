.class public Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;
.super Ljava/lang/Object;
.source "RegisterModuleEntity.java"


# instance fields
.field public isOnce:Z

.field public moduleObj:Lcom/netease/ntunisdk/modules/base/BaseModules;


# direct methods
.method public constructor <init>(ZLcom/netease/ntunisdk/modules/base/BaseModules;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;->isOnce:Z

    .line 9
    iput-boolean p1, p0, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;->isOnce:Z

    .line 10
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;->moduleObj:Lcom/netease/ntunisdk/modules/base/BaseModules;

    return-void
.end method
