.class public Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;
.super Ljava/lang/Object;
.source "PermissionTask.java"


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;->key:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;->value:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;->value:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    return-object v0
.end method
