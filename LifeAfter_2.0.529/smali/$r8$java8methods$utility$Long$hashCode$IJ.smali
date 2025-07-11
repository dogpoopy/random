.class public synthetic L$r8$java8methods$utility$Long$hashCode$IJ;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic hashCode(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    return p0
.end method
