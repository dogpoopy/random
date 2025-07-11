.class public Lcom/netease/androidcrashhandler/Const$EventTypeValue;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventTypeValue"
.end annotation


# static fields
.field public static final ANR:I = 0x6

.field public static final CRASHHUNTER_START_EVENT:I = 0x9

.field public static final FILE_COPY_FINISH:I = 0x3

.field public static final HAVE_NATIVE_CRASH:I = 0xa

.field public static final JAVA_CRASH:I = 0x4

.field public static final JAVA_CRASH_NEW:I = 0xb

.field public static final NATIVE_CRASH:I = 0x8

.field public static final UNKNOWN_EXCEPTION:I = 0xc

.field public static final UPLOAD_CALLBACK:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/Const;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/Const;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/netease/androidcrashhandler/Const$EventTypeValue;->this$0:Lcom/netease/androidcrashhandler/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
