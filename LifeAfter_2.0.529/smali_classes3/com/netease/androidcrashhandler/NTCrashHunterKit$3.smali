.class Lcom/netease/androidcrashhandler/NTCrashHunterKit$3;
.super Ljava/lang/Object;
.source "NTCrashHunterKit.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/NTCrashHunterKit;->checkLastTimeEventByType(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/NTCrashHunterKit;I)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$3;->this$0:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    iput p2, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$3;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 697
    iget p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$3;->val$type:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "UNDEFINED_EXCEPTION_"

    .line 705
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "ANR_TRACE_"

    .line 703
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const-string p1, "NATIVE_DUMP_"

    .line 701
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string p1, "JAVA_DUMP_"

    .line 699
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
