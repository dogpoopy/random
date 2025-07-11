.class public Lcom/netease/ntunisdk/SdkPermissionKit$OtherPermissionContext;
.super Ljava/lang/Object;
.source "SdkPermissionKit.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/permission/PermissionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkPermissionKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherPermissionContext"
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkPermissionKit$OtherPermissionContext;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPermissionKit$OtherPermissionContext;->context:Landroid/content/Context;

    return-object v0
.end method
