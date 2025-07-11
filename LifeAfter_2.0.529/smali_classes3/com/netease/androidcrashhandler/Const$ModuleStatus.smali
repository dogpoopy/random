.class public Lcom/netease/androidcrashhandler/Const$ModuleStatus;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleStatus"
.end annotation


# static fields
.field public static final COMMON_FAIL:I = 0x4

.field public static final COMMON_FINISH:I = 0x3

.field public static final COMMON_INIT:I = 0x0

.field public static final COMMON_PROGRESS:I = 0x2

.field public static final COMMON_RESTART:I = 0x1

.field public static final COMMON_STOP:I = 0x5

.field public static final EXCEPTION_ERROR:I = -0x2

.field public static final UNKNOWNERROR:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/Const;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/Const;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/netease/androidcrashhandler/Const$ModuleStatus;->this$0:Lcom/netease/androidcrashhandler/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
