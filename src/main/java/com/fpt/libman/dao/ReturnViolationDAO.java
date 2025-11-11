package com.fpt.libman.dao;

import com.fpt.libman.model.ReturnViolation;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ReturnViolationDAO extends DAO {

    public ReturnViolationDAO() throws SQLException {
        super();
    }

    public boolean addReturnViolation(ReturnViolation rv) throws SQLException {
        String sql = "INSERT INTO tblReturnViolation (fee, isPaid, tblReturnedDocumentId, tblViolationId) " +
                "VALUES (?, ?, ?, ?)";

        try (PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setFloat(1, rv.getFee());
            ps.setBoolean(2, rv.isPaid());
            ps.setInt(3, rv.getReturnDocumentId());
            ps.setInt(4, rv.getViolation().getId());

            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                try (ResultSet rs = ps.getGeneratedKeys()) {
                    if (rs.next()) {
                        rv.setId(rs.getInt(1));
                    }
                }
                System.out.println("[OK] Added new ReturnViolation, id=" + rv.getId());
                return true;
            }
            return false;
        }
    }
}