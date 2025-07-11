.class public Lcom/netease/cc/videoedit/transcoder/internal/AvcSpsUtils;
.super Ljava/lang/Object;
.source "AvcSpsUtils.java"


# static fields
.field public static final PROFILE_IDC_BASELINE:B = 0x42t

.field public static final PROFILE_IDC_EXTENDED:B = 0x58t

.field public static final PROFILE_IDC_HIGH:B = 0x64t

.field public static final PROFILE_IDC_MAIN:B = 0x4dt


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfileIdc(Ljava/nio/ByteBuffer;)B
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0
.end method

.method public static getProfileName(B)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x58

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Profile ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "High Profile"

    return-object p0

    :cond_1
    const-string p0, "Extended Profile"

    return-object p0

    :cond_2
    const-string p0, "Main Profile"

    return-object p0

    :cond_3
    const-string p0, "Baseline Profile"

    return-object p0
.end method
